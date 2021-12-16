# Docker commands

## Unit 3: Create a Docker image from a script

### 1. Create docker image file

```
FROM alpine:3.15
LABEL maintainer Andreas Wenzelhuemer <andreas.wenzelhuemer@gmail.com>

RUN apk update && apk add curl=7.80.0-r0 && \
    rm -rf /var/cache/apk/
```

### 2. Run a dockerfile lint

Pull linter:
`docker pull hadolint/hadolint`

Execute linter:
`docker container run --rm -i hadolint/hadolint < Dockerfile`

### 3. Create docker image

`docker image build -t alpine-with-curl .`

No build cache with `--no-cache` option.

### 4. Run container with custom image

`docker container run alpine-with-curl sh -c "apk info curl"`