= Unit 3

== Task 1

- Create a Dockerfile that creates an image based on alpine and installs the curl tool. Build an image with the image (repository) name alpine-with-curl

create dockerfile in the explorer

- Dockerfile for alpine-with-curl

```Dockerfile
FROM alpine:3.15.0
LABEL maintainer='FLorian Weingartshofer <florian.weingartshofer@gmail.com>'
RUN apk add curl=7.80.0-r0 --update --no-cache && rm -rf /var/cache/apk/
```

- Build docker image from Dockerfile

```sh
docker image build . -t alpine-with-curl:1.0
```


== Task 2

- Run a Dockerfile lint tool to check if Dockerfile best practices are met. 
https://hadolint.github.io/hadolint/ (https://hub.docker.com/r/hadolint/hadolint/)

== Task 3

- Run the curl command in an instance (container) of the image we just built to check that the curl tool really is available to the container```sh
docker run --name hello2 alpine-with-curl:1.0 sh -c "curl google.com"
```

== Task 4

- Optimize the resulting image such that only a minimum of image layers are produced and the package manager instructions are executed properly

Is scho optimal