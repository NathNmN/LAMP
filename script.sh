#!/bin/bash
apt update -y
apt upgrade -y
echo -e "\E[32mmise à jour système effectuée \E[0m"
apt install apache2 -y
echo -e "\E[32mInstallation apache2\E[0m"
apt install libapache2-mod-php -y
echo -e "\E[32mInstallation libapache2\E[0m"
apt install mariadb-server -y
systemctl start mariadb
echo -e "\E[32mInstallation et démarage de mariadb server\E[0m"
apt install php php-mysql -y
echo -e "\E[32mInstallation php\E[0m"
apt install curl -y
echo -e "\E[32mInstallation curl\E[0m"
apt install unzip -y
echo -e "\E[32mInstallation unzip\E[0m"
apt install php-gd php-curl php-mbstring php-intl php-gmp php-bcmath php-xml php-imagick php-zip php-json  -y
echo -e "\E[32mInstallation prérequis \E[0m"
apt install gpg -y
echo -e "\E[32mInstallation gpg\E[0m"
apt install git -y
echo -e "\E[32mInstallation git\E[0m"
cd ~
cd /var/www/html
echo -e "\E[32mcd /var/www/html\E[0m"
rm index.html
rm index.php
touch index.php
echo "<?php
print (\"test\")
?>" >> index.php
systemctl reload apache2
