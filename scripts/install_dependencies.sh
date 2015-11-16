#!/bin/bash
apt-get -y install apache2

apt-get -y install openjdk-6-jdk
JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:bin/javac::")

apt-get -y install nodejs
apt-get -y install npm

# MySQL
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password sample_password'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password sample_password'
sudo apt-get -y install mysql-server
#mysql -h localhost -u root -psample_password
mysql -uroot -psample_password -e "CREATE DATABASE challenge;"
mysql -uroot -psample_password -e "GRANT ALL PRIVILEGES ON challenge.* TO 'challenge'@'localhost' IDENTIFIED BY 'challenge' WITH GRANT OPTION;FLUSH PRIVILEGES;"
#mysql -h localhost -u challenge -pchallenge

# NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
. ~/.bashrc
nvm install v0.8.12

# Maven
cd /usr/local/src
wget http://archive.apache.org/dist/maven/binaries/apache-maven-3.0.4-bin.tar.gz
tar -zxf apache-maven-3.0.4-bin.tar.gz
sudo cp -R apache-maven-3.0.4 /usr/local
sudo ln -s /usr/local/apache-maven-3.0.4/bin/mvn /usr/bin/mvn





