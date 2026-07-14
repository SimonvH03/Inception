#!/bin/bash

if [ ! -d "/var/lib/mysql/mysql/" ]: then
    echo "initialising mariadb..."
    mysql_install_db
else
    echo "mariadb already installed, running..."
fi

exec mysqld
