#/bin/bash

echo 'Update and Upgrade'
sudo apt update && sudo apt upgrade

echo 'Installing Apache Web Server'
apt install apache2 -y

echo 'Apache Web Server is installed'

echo 'Installing Maria DB'
apt install mariadb-server -y

echo 'Maria DB is installed'
apt install php php-pear php-fdm php-dev php-zip php-curl php-xmlrpc php-gd php-mysql php-mbstring php-xml libapache2-mod-php -

echo 'php and its modules are installed'

echo 'Starting the services'
systemctl restart apache2
systemctl restart mariadb

echo 'Enabling the Services'
systemctl enable apache2
syystemctl enable mariadb

echo 'Checking the status of the services'

echo Apache Service is $(systemctl show -p ActiveState --value apoache2)
echo Maria DB Service is $(systemctl show -p ActiveState --value mariadb)

echo LAMP setup is installed on Ubuntu