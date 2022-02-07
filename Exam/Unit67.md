# Unit 6

- Start container
`docker compose -f docker-compose-port.yml -f docker-compose.yml up -d`

- Start container with optimized build
`COMPOSE_DOCKER_CLI_BUILD=1 docker compose -f docker-compose-port.yml -f docker-compose.yml up -d`

- View health status
`docker container inspect -f "{{.State.Health.Status}}" e3cfee0e2aa3`