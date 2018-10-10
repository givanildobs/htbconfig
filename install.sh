#!/bin/bash

# addgroup htbsup 
# addgroup htbcom
# addgroup htbfin
# addgroup htbrh
# addgroup htbcont

# useradd meire
# useradd leonardo
# useradd daniel

# adduser leonardo htbsup, htbcom, htbfin, htbtrh, htbcont
# adduser givanildobs htbsup, htbcom, htbfin, htbrh, htbcont
# adduser meire htpfin, htbrh, htbcont
# adduser daniel htbsup


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

# copiar os arquivos de configuracao

sudo cp -r ~/htbconfig/etc/smb.conf /etc/samba/smb.conf
sudo cp -r ~/htbconfig/etc/fstab /etc/fstab

sudo /etc/init.d/samba restart
sudo mount

