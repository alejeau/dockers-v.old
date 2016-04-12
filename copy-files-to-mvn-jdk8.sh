docker cp install/computer-database/ `docker ps -f "ancestor=alejeau/mvn-jdk8" -q`:home/computer-database/
docker cp install/run.sh `docker ps -f "ancestor=alejeau/mvn-jdk8" -q`:run.sh

