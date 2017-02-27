# events-proxy

### Get certificate from Let's Encrypt

Execute following command from running container:

`certbot certonly --standalone --non-interactive --agree-tos --email vitaliy.kuznetsov@yahoo.co.uk \
    -w /var/www/fillyourday \
    -d fillyourday.com \
    -d www.fillyourday.com`