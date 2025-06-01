# Projeto Node.js com Docker e Nginx

Este projeto demonstra como criar uma API simples em Node.js que retorna dados aleatórios em formato JSON, utilizando Docker para containerização e Nginx como proxy reverso para balanceamento de carga entre múltiplas instâncias.

## Tecnologias Utilizadas

- **Node.js**: Backend da aplicação, servindo uma API REST simples.
- **Docker**: Containerização da aplicação para fácil deploy e escalabilidade.
- **Nginx**: Proxy reverso e balanceador de carga entre múltiplos containers Node.js.

## Como Executar

1. **Construa a imagem Docker:**
   ```sh
   docker build -t node-nginx-app .
   ```

2. **Rode múltiplos containers Node.js (em diferentes hosts ou usando diferentes IPs):**
   ```sh
   docker run -d -p 3000:3000 node-nginx-app
   # Repita em outros hosts ou altere a porta/IP conforme necessário
   ```

3. **Configure e inicie o Nginx com o arquivo `nginx.conf` fornecido neste projeto.**

4. **Acesse a aplicação:**
   - Página inicial: [http://localhost:4500/](http://localhost:4500/)
   - Endpoint de dados aleatórios: [http://localhost:4500/random](http://localhost:4500/random)

## Sobre

Este projeto foi inspirado em um exemplo anterior em PHP, mas foi totalmente reescrito em Node.js para demonstrar práticas modernas de desenvolvimento com containers e microsserviços.

---
Desenvolvido por [Seu Nome]
