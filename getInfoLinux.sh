#!/bin/bash

function cpu () {	
	cat /etc/hostname
	uname -a
    sudo lshw -short | egrep *processor*
    sudo lshw -short | egrep 0.0.0| egrep /dev/sda  | egrep *disk*
    sudo lshw -short | egrep memory | egrep DDR | egrep MHz
    sudo lshw -short | egrep *sistema*
    /usr/bin/lsb_release -ds
    ifconfig | egrep ether    
}

echo "Recuperando informações da máquina..."
echo "Arquivo salvo em " ~/`cat /etc/hostname`.txt

cpu > ~/`cat /etc/hostname`.txt

cat ~/`cat /etc/hostname`.txt
echo "Processo concluído"