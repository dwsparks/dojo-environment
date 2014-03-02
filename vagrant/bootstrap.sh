#!/usr/bin/env bash

#install apache, php and mod-php
apt-get update
apt-get install -y apache2
rm  /var/www/index.html

apt-get install -y php5
apt-get install -y libapache2-mod-php5
/etc/init.d/apache2 restart

#get dojo source and demos
wget -O ~/http://download.dojotoolkit.org/release-1.8.6/dojo-release-1.8.6-demos.tar.gz
wget -O ~/http://download.dojotoolkit.org/release-1.8.6/dojo-release-1.8.6-src.tar.gz

tar -xzf ~/dojo-release-1.8.6-demos.tar.gz
tar -xzf ~/dojo-release-1.8.6-src.tar.gz

mv ~/dojo-release-1.8.6/demos /var/www/
mv ~/dojo-release-1.8.6-src/* /var/www/

#install Git
apt-get install -y git-core
