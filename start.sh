#!/bin/bash

certbot certonly --standalone --non-interactive --agree-tos --email vitaliy.kuznetsov@yahoo.co.uk \
    -w /var/www/fillyourday \
    -d fillyourday.com \
    -d www.fillyourday.com

nginx -g "daemon off;"