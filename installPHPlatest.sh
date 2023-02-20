#!/bin/bash
## updating repos
if [ "$EUID" -ne 0 ]
	echo "you will be prompt to enter sudo password"
	sudo apt update
	sudo apt install -y software-properties-common
	sudo add-apt-repository ppa:ondrej/php
	sudo apt update
	echo "installing latest PHP version"
	sudo apt install php
else
	apt update
        apt install -y software-properties-common
        add-apt-repository ppa:ondrej/php
        apt update
        echo "installing latest PHP version"
        apt install php
fi
