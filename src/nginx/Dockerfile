FROM debian:bookworm

RUN apt update && apt upgrade && apt install -y \
    nginx \
    openssl

COPY nginx.conf /etc/nginx/sites-available/default

RUN mkdir /etc/nginx/ssl \
    && openssl req -x509 -newkey rsa:4096 \
    -keyout/etc/nginx/ssl/key.pem \
    -out /etc/nginx/ssl/cert.pem \
    -sha256 -days 365 -nodes -subj '/CN=svan-hoo.42.fr' -batch

CMD ["nginx", "-g", "daemon off;"]
