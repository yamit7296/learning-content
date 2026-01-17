const { kafka } = require('./client');


const init = async () => {
    const admin = kafka.admin();
    admin.connect();
    
    // console.log('Admin is connected', admin);

    await admin.createTopics({
        topics: [{ topic: 'delivery-topic', numPartitions: 2}],
    });

    console.log('Topic created');

    admin.disconnect();
}

init();