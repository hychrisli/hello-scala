# hello-scala
My Scala Practice


## Setup
* build a docker image as the dev environment
```
cd <hello-scala directory>
docker build -t chris/hello-scala:latest -t chris/hello-scala:v0.1 .
```
* run container detached
```
docker run -i -t -d --rm \
-v <hello-scala directory>:/scala \
--name=scala-container \
chris/hello-scala /bin/bash
```
* access container
```
docker exec -it $(docker ps --filter "name=scala-container" --format "{{.ID}}") bash
```

