WEB_DIR	= /home/svan-hoo/data/wordpress_web
DB_DIR	= /home/svan-hoo/data/wordpress_db

DOCKER_COMPOSE = ./src/docker-compose.yml

all: up

up:
	mkdir -p $(WEB_DIR)
	mkdir -p $(DB_DIR)
	docker compose -f $(DOCKER_COMPOSE) up -d

down:
	docker compose -f $(DOCKER_COMPOSE) down

clean:
	docker compose -f $(DOCKER_COMPOSE) down --rmi local
	sudo rm -rf $(WEB_DIR) $(DB_DIR)

re: down up

.PHONY: up down clean re
