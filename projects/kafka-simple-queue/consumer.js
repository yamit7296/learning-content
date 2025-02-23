const { kafka }  = require('./client');

const init = async () => {
    const consumer = kafka.consumer({ groupId: 'my-group' });
    await consumer.connect();
    await consumer.subscribe({ topics: ['delivery-topic'], fromBeginning: true });
    await consumer.run({
        eachMessage: async ({ topic, partition, message, heartbeat, pause }) => {
            console.log({
                value: message.value.toString(),
            })
        },
    })

}

init();