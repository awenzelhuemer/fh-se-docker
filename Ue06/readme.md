# Unit 7

## 1. Run docker compose files

`docker compose -f docker-compose.yml -f docker-compose-port.yml up -d`

## 2. Test web app
```
curl -X POST -H "Content-Type: application/json" -d '{ "name": "foobar" }' http://localhost/api/companies

curl http://localhost/api/companies
```

## 3. Improve build performance

`COMPOSE_DOCKER_CLI_BUILD=1 DOCKER_BUILDKIT=1 docker compose -f docker-compose.yml -f docker-compose-port.yml up -d`

## 4. Delete volumes

`docker compose down -v`