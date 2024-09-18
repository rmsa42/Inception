DOCKER_COMPOSE_PATH = ./srcs/docker-compose.yml

build:
	@docker compose -f ${DOCKER_COMPOSE_PATH} up -d --build
stop:
	@docker compose -f ${DOCKER_COMPOSE_PATH} stop
kill:
	@docker compose -f ${DOCKER_COMPOSE_PATH} kill
down:
	@docker compose -f ${DOCKER_COMPOSE_PATH} down
clean:
	@docker system prune -a
