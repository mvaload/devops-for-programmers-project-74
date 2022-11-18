## Packing in Docker Compose

### Hexlet tests and linter status:
[![Actions Status](https://github.com/mvaload/devops-for-programmers-project-74/workflows/hexlet-check/badge.svg)](https://github.com/mvaload/devops-for-programmers-project-74/actions)
[![CI](https://github.com/mvaload/devops-for-programmers-project-74/actions/workflows/push.yml/badge.svg)](https://github.com/mvaload/devops-for-programmers-project-74/actions/workflows/push.yml)


### Requirements

* docker
* docker compose
* make

### How to use

Specify environment variables manually or prepare a .env file with the command:

```
make copy-env
```

In it specify the data to connect to the database:

- DATABASE_NAME=postgres
- DATABASE_USERNAME=postgres
- DATABASE_PASSWORD=postgres
- DATABASE_PORT=5432
- DATABASE_HOST=localhost


The docker image for this application is hosted on docker hub to download it run:

```
docker pull mvaload/devops-for-programmers-project-74
```

#### Run app
```
make setup
make start
```
#### Run tests
```
make setup
make test
```