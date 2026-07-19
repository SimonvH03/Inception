# User Documentation
## Services Provided
- nginx
- mariadb
- php

## How-to
### Setup
provide a file named '.env' in the project root containing the following environment variables:
```
# mariadb
DB_NAME=

DB_USER=
DB_USER_PASSWORD=

# wordpress
WP_ADMIN=
WP_ADMIN_PASSWORD=
WP_ADMIN_MAIL=

WP_USER=
WP_USER_PASSWORD=
WP_USER_MAIL=
```
these will be used by the mariadb and wordpress (wp-php) containers to create the database and authorise internal service.

## optional: configure a domain name
add the following line to /etc/hosts (root access may be required)
```
127.0.0.1 svan-hoo.42.fr
```
### Start
```bash
make
```
### Stop
```bash
make down
```
### Stop and remove data
(root access required)
```bash
make clean
```

access the website at `https://localhost` (or `https://svan-hoo.42.fr` if set up) in your favourite browser

if warned about self-signed certificates, persist. you're almost there

to access the administration panel, visit `https://localhost/wp-admin` and log in using WP_ADMIN_MAIL and WP_ADMIN_PASSWORD from the '.env' file.

### Are services running correctly?
run the command:
```bash
docker ps
```
the output should look similar to:
```
CONTAINER ID   IMAGE         COMMAND                  CREATED          STATUS          PORTS                                   NAMES
f1560ac50540   src-nginx     "nginx -g 'daemon of…"   55 seconds ago   Up 52 seconds   0.0.0.0:443->443/tcp, :::443->443/tcp   nginx
defe2046c8e0   src-wp-php    "/init.sh"               55 seconds ago   Up 53 seconds   9000/tcp                                wp-php
0f065172447a   src-mariadb   "/init.sh"               55 seconds ago   Up 54 seconds   3306/tcp                                mariadb
```
