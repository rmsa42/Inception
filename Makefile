DOCKER_COMPOSE_PATH = ./srcs/docker-compose.yml
DOCKER_VOLUME_PATH = /home/rumachad/data

build:
	@mkdir -p ${DOCKER_VOLUME_PATH}/db ${DOCKER_VOLUME_PATH}/wordpress
	@docker compose -f ${DOCKER_COMPOSE_PATH} up -d --build
down:
	@docker compose -f ${DOCKER_COMPOSE_PATH} down
clean: down
	@docker system prune -a
	@docker volume rm $$(docker volume ls -q)
	@sudo rm -rf ${DOCKER_VOLUME_PATH}/*

re: clean build
