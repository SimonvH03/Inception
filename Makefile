DC				= docker compose

all: up

up:
	$(DC) up --build -d

down:
	$(DC) down

start:
	$(DC) start

stop:
	$(DC) stop

logs:
	$(DC) logs

ps:
	$(DC) ps