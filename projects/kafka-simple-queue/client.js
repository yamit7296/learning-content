const { Kafka } = require('kafkajs');
exports.kafka =  new Kafka({
    clientId: 'kafka-client',
    brokers: ['localhost:9092'],
  });
  