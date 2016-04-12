docker rm -f dind
docker network rm cdb-network

docker network create cdb-network
docker run --privileged --net=cdb-network --name=dind docker:dind

docker network rm cdb-network
