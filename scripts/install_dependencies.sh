#!/bin/bash
# JAVA
JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:bin/javac::")
# MySQL
mysql -uroot -psample_password -e "CREATE DATABASE IF NOT EXISTS challenge;"
mysql -uroot -psample_password -e "GRANT ALL PRIVILEGES ON challenge.* TO 'challenge'@'localhost' IDENTIFIED BY 'challenge' WITH GRANT OPTION;FLUSH PRIVILEGES;"
# NVM
export NVM_DIR="/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
nvm use v0.8.12