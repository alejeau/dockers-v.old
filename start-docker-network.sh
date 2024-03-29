docker network create custom_net

# docker run -ti -d --name mvn-jdk8 --net="custom_net|a12e1fc38e52f8e6dc9cd87e6cde47e35b5bb2b2c2bdf50ea0b82becaf9b943c" alejeau/mvn-jdk8
# docker run -ti -d --name cdb --net="custom_net|a12e1fc38e52f8e6dc9cd87e6cde47e35b5bb2b2c2bdf50ea0b82becaf9b943c" computer-db

# docker run -ti -d --name mvn-jdk8 --net=custom_net alejeau/mvn-jdk8
docker run -ti -d --name mvn-jdk8 -v /home/excilys/.m2/repository:/root/.m2/repository --net=custom_net alejeau/mvn-jdk8
docker run -ti -d --name cdb --net=custom_net mysql-db
# docker run -ti -d --name cdb --net=custom_net computer-db

# docker network connect isolated_nw c1
# docker network connect isolated_nw c2

# docker run --net=isolated_nw --ip=172.25.3.3 -itd --name=container3 busybox
# docker network connect cdb

