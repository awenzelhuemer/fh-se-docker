# Exercise 4

## 1. Build project
`docker container run -v ${PWD}/continuousdelivery:/project --workdir /project -e GRADLE_USER_HOME=/project/.gradle_home --rm adoptopenjdk/openjdk11:alpine sh -c "./gradlew build"`
## 2. Build dockerfile
`docker build -t continuousdelivery .`
## 3. Run dockerfile
`docker container run --rm continuousdelivery`
## 4. Port forwarding from 8080 to 80
`docker container run -p:80:8080 -d continuousdelivery`

## 5. Add health check
```
RUN apk update && apk --no-cache add curl && \
rm -r /var/cache/apk/
HEALTHCHECK CMD curl -f http://localhost:8080/actuator/health
```

## 6. Execute health check
```
cid=$(docker container run -d -p 80:8080 continuousdelivery:latest) 
docker container inspect -f '{{ .State.Health.Status }}' ${cid} 
until [ "$(docker inspect -f {{.State.Health.Status}} ${cid})" == "healthy" ]; do
    echo "Waiting for container ${cid} to come up" && sleep 0.5;
done;
docker container ls -f id=${cid}
docker container logs ${cid}
```