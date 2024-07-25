# install all repositories
all:
	git clone https://github.com/shodon2007/networth-db
	git clone https://github.com/shodon2007/networth-api
	git clone https://github.com/shodon2007/networth-client
	git clone https://github.com/shodon2007/networth-proxy
	git clone https://github.com/shodon2007/networth-search


# start and stop docker-compose
start:
	docker-compose up -d
stop:
	docker-compose down


# logs
# example: make logs:api
logs:
	docker-compose logs
logs\:client:
	docker-compose logs client
logs\:db:
	docker-compose logs db
logs\:api:
	docker-compose logs api
logs\:proxy:
	docker-compose logs proxy


# Enter the container terminal
# example: make enter:api
enter\:client:
	docker container exec -it networth-client bash
enter\:db:
	docker container exec -it networth-db bash
enter\:api:
	docker container exec -it networth-api bash
enter\:proxy:
	docker container exec -it networth-proxy bash