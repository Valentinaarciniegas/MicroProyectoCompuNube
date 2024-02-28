// web1.js - Aplicación web para consulnode1
const http = require('http');

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/html' });
  res.end('<h1>¡Bienvenido a la Aplicación Web 1!</h1>');
});

const PORT = 3010;
server.listen(PORT, () => {
  console.log(`Servidor web 1 escuchando en el puerto ${PORT}`);
});
