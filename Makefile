# install all repositories
all:
	git clone https://github.com/shodon2007/networth-db
	git clone https://github.com/shodon2007/networth-api
	git clone https://github.com/shodon2007/networth-client
	git clone https://github.com/shodon2007/networth-proxy


# start and stop docker-compose
start:
	docker-compose up -d
stop:
	docker-compose down


# logs
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