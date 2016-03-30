docker cp install/computer-database/ `docker ps -f "ancestor=alejeau/docker-ut" -q`:home/computer-database/
docker cp install/run.sh `docker ps -f "ancestor=alejeau/docker-ut" -q`:run.sh

