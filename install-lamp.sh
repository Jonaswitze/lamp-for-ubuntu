#!/bin/bash

sudo apt update
sudo apt upgrade
sudo apt install -y apache2 apache2-utils
sudo systemctl enable apache2
sudo systemctl restart apache2
sudo chown www-data:www-data /var/www/html/ -R
sudo apt install mariadb-server mariadb-client
sudo systemctl enable mariadb
sudo systemctl restart mariadb
sudo mysql_secure_installation
sudo apt install php7.4 libapache2-mod-php7.4 php7.4-mysql php-common php7.4-cli php7.4-common php7.4-json php7.4-opcache php7.4-readline php7.4-bcmath
sudo a2enmod php7.4
sudo systemctl restart apache2

sudo a2enmod php7.4
sudo apt install php7.4-fpm
sudo a2enmod proxy_fcgi setenvif
sudo a2enconf php7.4-fpm
sudo systemctl restart apache2

sudo apt update
sudo apt install phpmyadmin


