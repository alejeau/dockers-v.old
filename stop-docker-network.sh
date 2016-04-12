docker stop mvn-jdk8
docker stop cdb

docker rm mvn-jdk8
docker rm cdb

docker network rm custom_net

