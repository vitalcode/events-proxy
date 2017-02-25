FROM nginx:1.11.10

RUN echo "deb http://ftp.debian.org/debian jessie-backports main" > /etc/apt/sources.list.d/backports.list

RUN apt-get update && \
    apt-get -y install certbot -t jessie-backports

COPY ./app.conf /etc/nginx/conf.d/
COPY ./start.sh .

CMD ["./start.sh"]
