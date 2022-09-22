compose-start:
	docker-compose up --abort-on-container-exit

compose-test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

start:
	npm start

test:
	npm -s test