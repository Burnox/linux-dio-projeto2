#!/bin/bash

echo 'Atualizando o servidor'
apt-get update -y
apt-get upgrade -y

echo 'Instalando Apache'
apt-get install apache2 -y

echo 'Instalando Unzip'
apt-get install unzip -y

echo 'Abrindo pasta tmp'
cd /tmp

echo 'Baixando aplicação'
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo 'Descompactar arquivo'
unzip main.zip

echo 'Abrindo pasta da aplicação'
cd linux-site-dio-main

echo 'Copiando os arquivos para a pasta do Apache'
cp -R * /var/www/html/
