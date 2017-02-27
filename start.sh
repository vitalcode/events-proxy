#!/bin/bash

if [ "$1" = "--certbot" ]; then
    rm /etc/letsencrypt/live/fillyourday.com/*.pem
    certbot certonly --standalone --non-interactive --agree-tos --email vitaliy.kuznetsov@yahoo.co.uk \
        -w /var/www/fillyourday \
        -d fillyourday.com \
        -d www.fillyourday.com \
        -d api.fillyourday.com \
        -d graphiql.fillyourday.com \
        -d es.fillyourday.com \
        -d db.fillyourday.com
fi

nginx -g "daemon off;"
