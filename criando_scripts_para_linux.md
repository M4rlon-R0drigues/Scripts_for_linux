# Para criação de scripts no Linux é necessario alguns comando, aqui vamos criar scripts simples para distribuição Linux.

### Criando arquivo

Primeiro passo é criar um arquivo com a extensão **`.sh`** e logo após abra esse arquivo com a IDE que preferir para começar a fazer seu script.

### Primeira linha do Script

A primeira linha do script tem o sinal `#` que é o sinal de comentário, ou seja, ele não interpreta como código e por uso pode ser usando em linhas para que o essas linhas sejam ignoradas.

        #!/bin/bash

### Sugestão de primeiro comando a serem postos no script

Assim que é feita a instalação do Linux em uma maquina e queremos instalar softwares, verificar se esta tudo atualizado, verificar se não há coisas desnecessárias podemos adicionar esse conjunto de comandos para fazer essas verificações:

        sudo apt update
        sudo apt upgrade -y
        sudo apt install -f -y
        sudo apt autoremove -y
        sudo apt autoclean

### Lista de Software sugeridos

- Instalação de gerenciador de pacotes Snap

        sudo apt install snapd

- Instalação de IDE Geany

        sudo apt install geany

- Instalação de IDE CodeBlocks

        sudo apt install codeblocks

- Instalação de IDE Sublime Text

        wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
        echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
        sudo apt update
        sudo apt install sublime-text -y

- Instalação de navegador Google Chormium

        sudo snap install chromium

- Instalção de reprodutor de midia VLC

        sudo apt install vlc

- Instalação de Virtual Box

        sudo apt install virtualbox

- Instalação de pacote de escritório WPS-Office

        sudo snap install wps-office-all-lang-no-internet

- Instalação de VSCode

        sudo snap install --classic code

**Obs.: Há diversas forma de fazer download de softwares como por exemplo baixando arquivos pena internet, porém para instalar via terminal usando script são recomentados usar comandos para instalar os softwares através dos gerenciadosres**

Para que o Script execute e instale os software é necessário que seja fornecido a senha do root assim que for solicitado pelo terminal.

### Exemplo de script pronto

        #!/bin/bash
        sudo apt update
        sudo apt upgrade -y
        sudo apt install -f -y
        sudo apt autoremove -y
        sudo apt autoclean
        sudo apt install vlc
        sudo snap install --classic code
        sudo apt install codeblocks
        exit

Salve o sei script com o nome que desejar com a extensão **`.sh`**, dê a ele permissão de execução e logo em seguida o execute com o termonal como [explicando anteriomente](https://github.com/M4rlon-R0drigues/Scripts_for_linux/blob/master/README.md).
