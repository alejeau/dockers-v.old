#docker network create dind-network
#docker run -ti -d --name ddind --net=dind-network docker:dind

docker pull alejeau/computer-db

docker pull alejeau/mvn-jdk8

rm /var/jenkins_home/jobs/computer-database/workspace/src/main/resources/dao.properties
cp /home/dao.properties /var/jenkins_home/jobs/computer-database/workspace/src/main/resources/dao.properties

docker network create cdb-network

docker run -ti -d --name mvn-jdk8 --net=cdb-network alejeau/mvn-jdk8
docker run -ti -d --name cdb --net=cdb-network mysql-db

docker cp ~/jobs/computer-database/workspace/ `docker ps -f "ancestor=alejeau/mvn-jdk8" -q`:home/computer-database/
docker cp /home/run.sh `docker ps -f "ancestor=alejeau/mvn-jdk8" -q`:run.sh

docker start mvn-jdk8
#lets the db starts
sleep 10
docker exec mvn-jdk8 chmod +x run.sh
docker exec mvn-jdk8 /bin/sh -c './run.sh'

docker rm -f mvn-jdk8
docker rm -f cdb

docker network rm cdb-network

