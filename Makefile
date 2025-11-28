all: up

up:
	docker compose up -d

down:
	docker compose down

restart:
	docker compose restart

logs:
	docker compose logs -f

clean: down
	docker system prune -af

fclean: clean
	sudo rm -rf /home/igrousso/data/mariadb/*
	sudo rm -rf /home/igrousso/data/wordpress/*
	sudo rm -rf /home/igrousso/data/adminer/*

re: clean up

.PHONY: all up down restart clean fclean re logs
