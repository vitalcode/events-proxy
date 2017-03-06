# events-proxy

Start proxy container running certbot client:

docker run --name proxy -it -p 443:443 vitalcode/events-proxy --certbot

Find certificate files in:

/etc/letsencrypt/live/fillyourday.com/
