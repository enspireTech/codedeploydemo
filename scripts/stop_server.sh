#!/bin/bash
isExistApp=`pgrep apache2`
if [[ -n  \$isExistApp ]]; then
service apache2 stop
fi
#isExistApp=`pgrep mysqld`
#if [[ -n  \$isExistApp ]]; then
#service mysqld stop
#fi