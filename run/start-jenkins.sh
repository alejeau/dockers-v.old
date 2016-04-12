docker rm -f jenkins
docker run --name jenkins --net cdb-network -p 8080:8080  alejeau/jkns-cdb

