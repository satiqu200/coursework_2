// load the http module
var http = require('http');

// configure our HTTP server
var server = http.createServer(function (request, response) {
  response.writeHead(200, {"Content-Type": "text/plain"});
  response.end("Hello Syed\n");
});

// listen on 40.76.85.175:80
server.listen(80);
console.log("Server listening at http://40.76.85.175:80/");