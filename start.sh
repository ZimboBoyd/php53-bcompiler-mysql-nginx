#!/bin/bash

set -x

chown www-data:www-data /var/www
chown mysql:mysql /var/lib/mysql

service mysql start 
service php5-fpm start 

/usr/sbin/nginx -t

echo "Starting nginx"
echo "Errors should appear here"
echo ""

exec /usr/sbin/nginx
