FROM adoptopenjdk/openjdk11:alpine-jre
COPY continuousdelivery/build/libs/continuousdelivery.jar /opt/app/app.jar
RUN apk update && apk add curl --no-cache --update && rm -rf /var/cache/apk/
HEALTHCHECK --interval=30s --timeout=3s \
  CMD curl -f http://localhost:8080/actuator/health || exit 1
ENTRYPOINT ["java", "-jar", "/opt/app/app.jar"]