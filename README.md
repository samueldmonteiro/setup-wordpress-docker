# Setup WordPress Docker

Este projeto configura um ambiente WordPress utilizando Docker-Compose.

## Instruções para Iniciar o Projeto

#### 1. **Clone o Repositório**

   ```bash
   git clone https://github.com/samueldmonteiro/setup-wordpress-docker.git
   cd setup-wordpress-docker
   ```

#### 2. **Crie o arquivo .env e configure seus valores. (Ou use variáveis locais se preferir)**

   ```bash
   cp .env.example .env
   ```

#### 3. **Configuração do PHP**
Existe um **php.ini** no diretório /config, onde você pode adicionar configurações ao php.

#### 4. **Inicie o projeto**
   ```bash
   docker compose up -d
   ```
