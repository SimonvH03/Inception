# Developer Documentation
read [USER_DOC.md](USER_DOC.md) first, it covers:
- how to start, stop, clean the project
- how to provide credentials as environment variables

## Requirements
- make
- docker engine or docker desktop

## Run recap
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

### optional: configure a domain name
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

## Persistent Data
All persistent data is stored in two directories, on for the website itself and one for the database attached to it. They are identified in the [`docker-compose.yml`](src/docker-compose.yml) file by `volumes.website.driver_opts.device` and `volumes.database.driver_opts.device`. By default these are set to `/home/<login>/data/wordpress_web` and `/home/<login>/data/wordpress_db`. Both are identified in the [Makefile](Makefile) as WEB_DIR and DB_DIR respectively, such that the Makefile can create and delete these directories.

## docker mini-tutorial (I yoinked this section)
check running containers:
`docker ps`

to create and access a shell in a running container:
`docker exec -i <container> sh`

to remove a running container:
`docker rm <container>`

check local images:
`docker images`

to remove an image:
`docker rmi <image>`

check local volumes:
`docker volume ls`

to remove a volume:
`docker volume rm <volume>`

for further information:
`docker help`

or run any of the previous commands with the `--help` flag