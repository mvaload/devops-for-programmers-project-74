start:
	docker-compose up --abort-on-container-exit

test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

setup: 
	build install

install:
	docker-compose run --rm app npm install

build:
	docker-compose build
	
bash:
	docker-compose run --rm app bash

copy-env:
	cp -n .env.example .env

production-build:
	docker-compose -f docker-compose.yml build

ci: 
	copy-env production-build test
