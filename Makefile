DOCKER_COMPOSE_PATH = ./srcs/docker-compose.yml

build:
	@docker compose -f ${DOCKER_COMPOSE_PATH} up -d --build
down:
	@docker compose -f ${DOCKER_COMPOSE_PATH} down
clean:
	@docker system prune -a
re: down build
