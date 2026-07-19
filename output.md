```
CONTAINER ID   IMAGE         COMMAND                  CREATED          STATUS          PORTS                                   NAMES
f1560ac50540   src-nginx     "nginx -g 'daemon of…"   55 seconds ago   Up 52 seconds   0.0.0.0:443->443/tcp, :::443->443/tcp   nginx
defe2046c8e0   src-wp-php    "/init.sh"               55 seconds ago   Up 53 seconds   9000/tcp                                wp-php
0f065172447a   src-mariadb   "/init.sh"               55 seconds ago   Up 54 seconds   3306/tcp                                mariadb
```
