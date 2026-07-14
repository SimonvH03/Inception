WEB_DIR	= /home/svan-hoo/data/wordpress_web
DB_DIR	= /home/svan-hoo/data/wordpress_db

all: up

up:
	mkdir -p $(WEB_DIR)
	mkdir -p $(DB_DIR)
	docker compose -f ./src/docker-compose.yml up -d

down:
	docker compose -f ./src/docker-compose.yml down

clean:
	docker compose -f ./src/docker-compose.yml down --rmi local
	sudo rm -rf $(WEB_DIR) $(DB_DIR)

re: down up

.PHONY: up down clean re
