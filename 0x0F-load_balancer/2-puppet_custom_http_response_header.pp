#!/usr/bin/env bash
# Nginx server listen on port 80.

rm /etc/nginx/sites-enabled/default
ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
service nginx restart
