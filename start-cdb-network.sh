docker network create custom_net

# docker run -ti -d --name cdb --net=custom_net computer-db
docker run -ti -d --name cdb --net=custom_net mysql-db

