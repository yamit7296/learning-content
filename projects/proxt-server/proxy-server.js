const http = require('http');

const server = http.createServer((clientRequest, clientResponse) => {
    const startTime = Date.now(); // For logging response time

    // Options for forwarding the request to the target server
    const options = {
        hostname: 'localhost',
        port: 3001,
        path: clientRequest.url,
        method: clientRequest.method,
        headers: clientRequest.headers,
    };

    // Forward the request to the private server using http.request
    const proxyRequest = http.request(options, (res) => {
        let result = '';

        // Forward response headers to the client
        clientResponse.writeHead(res.statusCode, res.headers);

        // Stream the response data from the target server to the client
        res.on('data', (chunk) => {
            result += chunk;
            clientResponse.write(chunk); // Forward chunk to client
        });

        res.on('end', () => {
            clientResponse.end();
            const endTime = Date.now();
            console.log(`Request to ${clientRequest.url} took ${endTime - startTime}ms`);
        });
    });

    // Handle request errors from the private server
    proxyRequest.on('error', (err) => {
        console.error('Error with proxy request:', err);
        clientResponse.writeHead(500, { 'Content-Type': 'application/json' });
        clientResponse.end(JSON.stringify({ error: 'Internal Server Error' }));
    });

    // Forward the request body (for POST, PUT, etc.)
    clientRequest.pipe(proxyRequest);
});

server.listen(3000, () => console.log('Proxy server listening on port 3000'));
