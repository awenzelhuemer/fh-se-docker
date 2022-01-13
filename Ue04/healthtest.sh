cid=$(docker container run -d -p 80:8080 continuousdelivery:latest) 
docker container inspect -f '{{ .State.Health.Status }}' ${cid} 
until [ "$(docker inspect -f {{.State.Health.Status}} ${cid})" == "healthy" ]; do
    echo "Waiting for container ${cid} to come up" && sleep 0.5;
done;
docker container ls -f id=${cid}
docker container logs ${cid}