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