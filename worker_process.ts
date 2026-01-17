import 'reflect-metadata'
import { Ignitor } from '@adonisjs/core'
import { Worker } from 'bullmq'
import { bullmqRedisConfig } from '#config/redis'

let app: any = null
let workers: Worker[] = []
let logger: any = null

async function initializeApp() {
  try {
    const APP_ROOT = new URL('../', import.meta.url)
    const IMPORTER = (filePath: string) => {
      if (filePath.startsWith('./') || filePath.startsWith('../')) {
        return import(new URL(filePath, APP_ROOT).href)
      }
      return import(filePath)
    }

    // Boot AdonisJS app context
    const ignitor = new Ignitor(APP_ROOT, { importer: IMPORTER })
    app = await ignitor.createApp('console')
    await app.init()
    await app.boot()

    // Import logger after app is booted
    const loggerModule = await import('@adonisjs/core/services/logger')
    logger = loggerModule.default

    console.log('✅ AdonisJS app initialized successfully')
  } catch (error) {
    console.error('❌ Failed to initialize AdonisJS app:', error)
    process.exit(1)
  }
}

async function setupWorkers() {
  try {
    // Import queue services after app is booted
    const { default: EmailQueue } = await import('#services/queue_service/email_queue')
    const { default: BadgeQueue } = await import('#services/queue_service/badge_queue')
    
    const queues = [EmailQueue, BadgeQueue]
    for (const queue of queues) {
      const worker = new Worker(
        queue.queue.name,
        async (job) => {
          console.log(`📧 Processing ${queue.queue.name} job ${job.id}`)
          await queue.process(job)  
        },
        bullmqRedisConfig
      )

      worker.on('completed', (job) => {
        console.log(`✅ ${queue.queue.name} job ${job.id} completed successfully`)
      })

      worker.on('failed', (job, error) => {
        console.error(`❌ ${queue.queue.name} job ${job?.id} failed:`, error)
      })
      workers.push(worker)
    }
    console.log('All queue workers started successfully')
  } catch (error) {
    console.error('❌ Failed to setup workers:', error)
    process.exit(1)
  }
}

async function gracefulShutdown() {
  console.log('🛑 Shutting down queue workers...')
  
  // Close all workers
  for (const worker of workers) {
    await worker.close()
    console.log(`✅ ${worker.name} worker closed`)
  }
  
  // Close app if initialized
  if (app) {
    await app.terminate()
    console.log('✅ AdonisJS app closed')
  }
  
  console.log('✅ Queue workers shut down gracefully')
  process.exit(0)
}

// Handle process signals
process.on('SIGTERM', gracefulShutdown)
process.on('SIGINT', gracefulShutdown)

// Handle uncaught exceptions
process.on('uncaughtException', (error) => {
  console.error('❌ Uncaught Exception:', error)
  gracefulShutdown()
})

process.on('unhandledRejection', (reason, promise) => {
  console.error('❌ Unhandled Rejection at:', promise, 'reason:', reason)
  gracefulShutdown()
})

// Start the queue worker
async function start() {
  console.log('🚀 Starting queue worker...')
  await initializeApp()
  await setupWorkers()
  console.log('🎉 Queue worker is now running and listening for jobs')
}

start().catch((error) => {
  console.error('❌ Failed to start queue worker:', error)
  process.exit(1)
}) 
