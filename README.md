_This project has been created as part of the 42 curriculum by svan-hoo_

# Description
"This project aims to broaden \[our\] knowledge of system administration by using Docker.
\[We\] will virtualise several Docker images, creating them in \[our\] new personal virtual
machine."
~ 42 Inception subject [v5.3](subject.pdf), 2026

# Instuctions
### requirements:
- make
- docker engine or docker desktop

### how to run
from the project root:
```bash
make
```
in your browser, visit `https://localhost`

# Project description
## Virtual Machine vs Docker
A virtual machine typically is much more resource intensive and slower than docker because it does not share nearly as much resources (e.g. the linux kernel) with the host machine.

## Secrets vs Environment Variables
Both docker secrets and environment variables let you use variable credentials (or other sensitive data) for different sessions. [Docker secrets](https://docs.docker.com/engine/swarm/secrets) are managed securely by docker and typically encrypted. Environment variables are simply available in an [env_file](https://docs.docker.com/reference/compose-file/services/#env_file).

## Docker Network vs Host Network
The [bridge network driver](https://docs.docker.com/engine/network/drivers/bridge) (default) lets docker containers communicate with each other in a network isolated from the host. The [host network driver](https://docs.docker.com/engine/network/drivers/host) will instead use the host's networking directly.

## Docker Volume vs Bind Mount
"When you use a [bind mount](https://docs.docker.com/engine/storage/bind-mounts), a file or directory on the host machine is mounted from the host into a container. By contrast, when you use a volume, a new directory is created within Docker's storage directory on the host machine."

# Resources
- [Docker docs](https://docs.docker.com/reference/cli/docker)
- [Nginx documentation](https://nginx.org/en/docs)
- [Wordpress documentation](https://wordpress.org/documentation)
- [Mariadb documentation](https://mariadb.com/docs)
- [Alpine wiki](https://wiki.alpinelinux.org)

## Reference Projects
- [mde-beer](https://github.com/BeerB34r/inception)
- [vbachele](https://github.com/vbachele/Inception)

### Disclaimer
AI was used to analyse error messages and scan files for syntax errors and typos