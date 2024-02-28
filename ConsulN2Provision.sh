#!/bin/bash

sudo apt-get update
sudo apt-get install -y unzip
curl -fsSL https://releases.hashicorp.com/consul/1.11.0/consul_1.11.0_linux_amd64.zip -o consul.zip
unzip consul.zip
sudo mv consul /usr/local/bin/
rm consul.zip

echo -e "\n\nInstalling nodeJs..."
sudo apt install nodejs -y

echo -e "\n\nInstalling and npm..."
sudo apt install npm -y

echo -e "\n\nInstalling pm2 to manage our nodejs demon....."
npm install -g pm2 -y

# Crear la carpeta ~/app si no existe
mkdir -p ~/app
cp /vagrant_data/web2.js ~/app/web2.js

# Ejecución de la aplicación web 2 
pm2 start /vagrant_data/web2.js --name "web2"