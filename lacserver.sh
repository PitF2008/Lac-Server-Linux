#!/bin/bash

echo 'Atualizando pacotes'
sudo apt-get update; apt-get upgrade &&

echo 'Instalando recursos'
sudo apt-get install screen; apt-get install unzip; apt-get install libc6-i386; apt-get install lib32stdc++6; apt-get install libncurses5:i386;

echo 'Criando diretórios'
cd /home ; mkdir lacserver; cd lacserver; 

echo 'Baixando Server 1.6.2'
sudo wget https://dl.lacrimesonline.com/builds/LAC_v1.6.2/LAC_Linux_Server_v1.6.2.zip -O LAC_Linux_Server_v.1.6.2.zip

echo 'Descompactando Arquivos'
sudo unzip LAC_Linux_Server_v.1.6.2.zip;

echo 'Autorizando'
sudo chmod +x LAC_Linux_v1.6.2.x86_64; cd;

echo 'Criando diretórios'
sudo mkdir .config; cd .config; mkdir unity3d; cd unity3d; mkdir MA; cd MA; mkdir LAC; mkdir editor; cd;


echo 'Criando Configurações do servidor'
cd /root/.config/unity3d/MA/LAC; wget https://cdn.discordapp.com/attachments/793513101495762944/1052344836939841737/ServerConfig.txt; nano ServerConfig.txt &&

echo 'Fim da configuração'
