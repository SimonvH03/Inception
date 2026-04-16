# syntax=docker/dockerfile:1

FROM debian:bullseye

RUN apt update && apt install -y \
	nginx openssl

COPY config/nginx.conf /etc/nginx/sites-available/default

CMD ["nginx", "-g", "daemon off;"]