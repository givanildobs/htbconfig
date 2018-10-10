#!/bin/bash

## INSTALACAO DO PACOTES NECESSARIOS

pacote=$(apt-cache show samba | grep Package)
if [ -n "$pacote" ];
	then
	 echo "Pacote $pacote ja instalado"
	else
	 sudo apt-get install $pacote -y
fi

pacote2=$(apt-cache show neofetch | grep package)
if [ -n "$pacote2" ];
	then
	 echo "Pacote $pacote2 ja instalado"
	else
	 pacote2=$(neofetch)
	 echo "Instalando $pacote2"
	 sudo apt-get install $pacote2 -y
fi


