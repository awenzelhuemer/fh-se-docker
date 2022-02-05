= Unit 2

== Task 1

- Install alpine package curl

```sh
# First start the container from our previous example as a background process 
docker container run -d --name hello alpine sh -c "while true; do sleep 10; echo 'Hello'; done"
# Then get the container id for the started container
docker container ps
# Run the commands to install curl in an interactive bash shell within the container without -ti, don't need to exit it, this way
docker container exec hello sh -c "apk update && apk add curl"
# Get more infos (description, ...) about curl
docker container exec hello sh -c "apk info curl"
```

- Install curl in interactive tty (-ti option)
```sh
# Run the commands to install curl in an interactive bash shell within the container with -ti
docker container exec -ti hello sh
$ apk update
$ apk add curl
# Exit the container
$ exit | [str] + [c]
```

== Task 2

- Commit container to image

```sh
docker container commit hello
```

== Task 3

- Let’s give the image a new name

```sh
docker image tag <id-from-the-last-command> alpine-with-curl:1.0
# run the new container
docker run --name hello2 alpine-with-curl:1.0
```

- Create container with curl
`docker container run -d --name hello-with-curl alpine-with-curl:1.0 sh -c "apk info curl"`