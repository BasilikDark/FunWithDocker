all: up

# the -f is the flag to specifie the .yml file afterwards
# the -d flag lets the containers run detached from the running terminal
up: 
	docker-compose -f docker-compose.yml up -d

down:
	docker-compose -f docker-compose.yml down

stop:
	docker-compose -f docker-compose.yml stop

start:
	docker-compose -f docker-compose.yml start

# ps shows all RUNNING Containers 
ps:
	docker ps

# with the -a Flag it shows as well all currently not running Containers!
psa:
	docker ps -a

# shows the running networks
net:
	docker network ls
