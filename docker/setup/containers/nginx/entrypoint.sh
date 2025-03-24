#!/bin/bash

echo "generating nginx config file from template"

cp -Rf /nginx/template.conf /etc/nginx/nginx.conf

sed -i "s|\${SERVER_NAME}|${SERVER_NAME}|g" /etc/nginx/nginx.conf
sed -i "s|\${PUBLIC_PATH}|${PUBLIC_PATH}|g" /etc/nginx/nginx.conf

cat /etc/nginx/nginx.conf
exec nginx -g "daemon off;"
