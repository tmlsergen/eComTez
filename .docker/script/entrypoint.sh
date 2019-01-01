#!/usr/bin/env bash

ln -s /etc/nginx/sites-available/eCom /etc/nginx/sites-enabled/eCom

service php7.2-fpm start
service nginx start

tail -f /dev/null