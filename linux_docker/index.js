const http = require('http');
const os = require('os');

const hostname = os.hostname();

function randomString(length) {
  return Math.random().toString(36).substr(2, length).toUpperCase();
}

const server = http.createServer((req, res) => {
  if (req.url === '/random' && req.method === 'GET') {
    const data = {
      id: Math.floor(Math.random() * 1000),
      nome: randomString(6),
      sobrenome: randomString(6),
      endereco: randomString(12),
      cidade: randomString(8),
      host: hostname
    };
    res.writeHead(200, {'Content-Type': 'application/json'});
    res.end(JSON.stringify(data));
  } else {
    res.writeHead(200, {'Content-Type': 'text/html'});
    res.end(`<h1>API Node.js</h1><p>Acesse <code>/random</code> para ver dados aleatórios.</p>`);
  }
});

server.listen(3000, () => {
  console.log('Servidor rodando na porta 3000');
});