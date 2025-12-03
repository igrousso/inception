VOLUME_DIR = /home/igrousso/data
DOCKER_COMPOSE = ./srcs/docker-compose.yml
PROJECT_NAME = inception

all: volume up

volume:
	mkdir -p $(VOLUME_DIR)/mariadb
	mkdir -p $(VOLUME_DIR)/wordpress
	mkdir -p $(VOLUME_DIR)/adminer
	mkdir -p $(VOLUME_DIR)/portainer

up:
	docker compose -p $(PROJECT_NAME) -f $(DOCKER_COMPOSE) up -d

down:
	docker compose -p $(PROJECT_NAME) -f $(DOCKER_COMPOSE) down

restart:
	docker compose -p $(PROJECT_NAME) -f $(DOCKER_COMPOSE) restart

clean: down
	docker system prune -af

fclean: clean
	docker volume rm mariadb
	docker volume rm wordpress
	docker volume rm adminer
	docker volume rm portainer
	sudo rm -rf $(VOLUME_DIR)/mariadb
	sudo rm -rf $(VOLUME_DIR)/wordpress
	sudo rm -rf $(VOLUME_DIR)/adminer
	sudo rm -rf $(VOLUME_DIR)/portainer

re: clean up

.PHONY: all up down restart clean fclean re volume
