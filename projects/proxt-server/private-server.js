const http = require('http');

const PORT = 3001

const server = http.createServer((req, res) => {
    try {
        res.writeHead(200, { 'Content-Type': 'application/json'});
        let data;
        switch (req.url) {
            case '/':
                data = { title: 'This is root url, Welcome to Private Server'};
                break;
            case '/about':
                data = {name: 'Amit Yadav', age: 27}
                break;
            default:
                throw new Error('Invalid URL');
        }
        res.end(JSON.stringify(data));
    } catch (error) {
        if(!res.headersSent) {
            res.writeHead(400, 'Content-Type', 'application/json');
        }
        res.end(JSON.stringify({error: error}));
    }
});

server.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
})