compose-start:
	docker-compose up --abort-on-container-exit

compose-test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

start:
	npm start

test:
	npm -s test

install:
	npm install

setup:
	docker-compose run make install

build:
	docker build -f Dockerfile.production -t mvaload/devops-for-programmers-project-74:latest

compose-ci: compose-ci-build compose-ci-test

compose-ci-build:
	docker-compose --file docker-compose.yml build

compose-ci-test:
	docker-compose --file docker-compose.yml up --abort-on-container-exit

env-prepare:
	cp -n .env.example .env || true