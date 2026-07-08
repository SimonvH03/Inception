FROM debian:bookworm

RUN apt update && apt upgrade && apt install -y \
    nginx

COPY config/nginx.conf /etc/nginx/sites-available/default

CMD ["nginx", "-g", "daemon off;"]
