docker container run \
    -v ${PWD}/continuousdelivery:/project \
    --workdir /project \
    -e GRADLE_USER_HOME=/project/.gradle_home \
    --rm \
    adoptopenjdk/openjdk11:alpine \
    sh -c "./gradlew build"