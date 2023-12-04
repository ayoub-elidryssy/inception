all:
	docker-compose up -d --build  
	
down:
	docker-compose down

clean:
	sudo rm -rf /home/aelidrys/data/mariadb/*
	sudo rm -rf /home/aelidrys/data/wordpress/*
	docker-compose down

re: down all 