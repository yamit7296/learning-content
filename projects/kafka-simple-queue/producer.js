const { kafka } = require('./client');

const init = async () => {
    const producer = kafka.producer();
    await producer.connect();

    const deliveryMessage = {
        topic: 'delivery-topic',
        messages: [{ 
            partion: 0,
            value: JSON.stringify({ deliveryId: '123', customerId: '456', status: 'pending' }) 
        }],
    };

    await producer.send(deliveryMessage);
    console.log('Delivery message sent');

    await producer.disconnect();
}

init();