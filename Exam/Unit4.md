= Unit 4

== Task 1

- Clone the repository into the project directory 
`git clone https://github.com/MartinAhrer/continuousdelivery.git continuousdelivery`

- Run a container that runs the command ./gradlew build in the cloned repository directory. This command requires that a JDK 11 is available. The adoptopenjdk/openjdk11:alpine image is an image that provides this JDK

- Start image
`docker container run -d --name webserver -p 80:8080 continuousdelivery`

- Run the container

- Check health
`docker container ls`

- Inspect docker container configuration
`docker container inspect webserver`