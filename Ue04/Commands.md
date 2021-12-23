# Exercise 4

## 1. Build project
`docker container run -v ${PWD}/continuousdelivery:/project --workdir /project -e GRADLE_USER_HOME=/project/.gradle_home --rm adoptopenjdk/openjdk11:alpine sh -c "./gradlew build"`
## 2. Build dockerfile
`docker build -t continousdelivery .`
## 3. Run dockerfile
`docker container run --rm continousdelivery`
## 4. Port forwarding from 8080 to 80
`docker container run -p:80:8080 -d continousdelivery`