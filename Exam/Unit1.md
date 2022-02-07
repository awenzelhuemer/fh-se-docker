# Unit 1

## Task 1

- Starting a container

`docker container run --rm --name hello alpine sh -c "echo Hello"`

## Task 2

- How can we make the container we created visible?
`docker container run --name hello alpine sh -c "echo Hello"`
`docker container ls -la`

- What is the state of the container we created?
`Exited`

- How do we get more details about a container or image?
`docker inspect alpine`

- How can we remove the container?
`docker container rm hello`

## Task 3

- Pull image
`docker pull alpine:latest`

- What did you notice during the pull, what exactly happened?
Different layers get pu

## Task 4
a
- Create a container that is staying alive
`docker container run -d --name hello alpine sh -c "while true; do sleep 10; echo 'Hello'; done"`

- Command to get all running containers
`docker container ls`

- Display a live stream of container(s) resource usage statistics
`docker container stats` | `docker stats`

- Display the running processes of the created hello container
`docker container top hello`

## Task 5

- Stop container
`docker container stop hello`

- Remove container
`docker container rm hello`

- Remove image
`docker image rm alpine`