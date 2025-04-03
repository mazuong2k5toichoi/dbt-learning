include env

build:
	docker-compose build

up:
	docker-compose --env-file env up -d

down:
	docker-compose --env-file env down

restart:
	make down && make up
to_psql:
	docker exec -ti de_psql psql postgres://admin:admin123@localhost:5432/brazillian_ecommerce