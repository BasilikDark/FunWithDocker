DIR_W := ~/inception/srcs/wordpress
DIR_M := ~/inception/srcs/mariadb
DIR := ~/inception/src
all: up

# propably add folders for the volumes

# the -f is the flag to specifie the .yml file afterwards
# the -d flag lets the containers run detached from the running terminal
up: $(DIR_W) $(DIR_M) 
	docker-compose -f srcs/docker-compose.yml up -d --build

down:
	docker-compose -f srcs/docker-compose.yml down

stop:
	docker-compose -f srcs/docker-compose.yml stop

start:
	docker-compose -f srcs/docker-compose.yml start

del:
	docker system prune -a
	docker volume prune -a
#	rm -rf ~/inception

# ps shows all RUNNING Containers 
ps:
	docker ps

# with the -a Flag it shows as well all currently not running Containers!
psa:
	docker ps -a

# shows the running networks
net:
	docker network ls

$(DIR):
	mkdir -p ~/inception
	mkdir -p ~/inception/srcs

$(DIR_M): $(DIR)
	mkdir -p ~/inception/srcs/mariadb


$(DIR_W): $(DIR)
	mkdir -p ~/inception/srcs/wordpress

