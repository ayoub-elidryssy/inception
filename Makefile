all:
	docker compose -f ./srcs/docker-compose.yml up -d --build  


down:
	docker compose -f ./srcs/docker-compose.yml down

clean:
	sudo rm -rf /home/aelidrys/data/mariadb/*
	sudo rm -rf /home/aelidrys/data/wordpress/*
	docker compose -f ./srcs/docker-compose.yml down

re: down all 