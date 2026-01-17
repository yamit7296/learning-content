const express = require('express');
const cluster = require('cluster');
const os = require('os');


const app = new express();
const PORT = 3003;

app.get('/', (req, res) => {
    const computeTime = Date.now() + 20000;
    while(Date.now() < computeTime) {

    }
    res.status(200).send('Welcome to cluster Module');
})

app.get('/home', (req, res) => {
    res.send(`Welcome to home page`)
})

if(cluster.isMaster) {
    console.log(`Master ${cluster} started`);
    const numCpus = os.cpus().length;

    for(let i = 0; i < numCpus; i++) {
        cluster.fork();
    }
}
else {
    app.listen(PORT, ()=>{
        console.log('Server is running on PORT '+PORT);
    });
}
