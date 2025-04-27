#!/bin/bash

# Atualiza os pacotes do sistema
echo "Atualizando pacotes do sistema..."
sudo apt update -y
sudo apt upgrade -y

# Instala o Apache
echo "Instalando Apache..."
sudo apt install apache2 -y

# Inicia o serviço Apache e garante que ele seja iniciado automaticamente no boot
echo "Iniciando o Apache..."
sudo systemctl start apache2
sudo systemctl enable apache2

# Verifica se o Apache está rodando
echo "Verificando status do Apache..."
sudo systemctl status apache2

# Criando uma página de teste no Apache
echo "Criando uma página de teste para o Apache..."
echo "<html>
  <head>
    <title>Servidor Apache Funcionando</title>
  </head>
  <body>
    <h1>Apache está funcionando corretamente!</h1>
  </body>
</html>" | sudo tee /var/www/html/index.html

echo "Servidor Apache provisionado com sucesso!"
