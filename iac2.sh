#!/bin/bash

echo "Atualização do servidor"

apt update -y
apt upgrade -y

echo "Instalação do apache2"

apt install apache2 -y

echo "Instalação do unzip"

apt install unzip -y 

echo "Download da aplicação presente no GitHub"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Desconpactando o arquivo zip"
unzip main.zip

echo "Copiando os arquivos da aplicação no diretório padrão do apache"
cd linux-site-dio-main 
cp -R * /var/www/html/
