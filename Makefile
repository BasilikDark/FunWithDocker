DIR_D := ~/inception/srcs/wordpress

all: up

# propably add folders for the volumes

# the -f is the flag to specifie the .yml file afterwards
# the -d flag lets the containers run detached from the running terminal
up: $(DIR_D)
	docker-compose -f src/docker-compose.yml up -d --build

down:
	docker-compose -f src/docker-compose.yml down

stop:
	docker-compose -f src/docker-compose.yml stop

start:
	docker-compose -f src/docker-compose.yml start

del:
	docker system prune -a

# ps shows all RUNNING Containers 
ps:
	docker ps

# with the -a Flag it shows as well all currently not running Containers!
psa:
	docker ps -a

# shows the running networks
net:
	docker network ls

$(DIR_D):
	mkdir -p ~/inception
	mkdir -p ~/inception/srcs
	mkdir -p ~/inception/srcs/wordpress
