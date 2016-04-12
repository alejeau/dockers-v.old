FROM jenkins:latest

USER root
 
RUN curl -sSLk https://get.docker.com/ | sh && rm -rf /var/lib/apt/lists/*

ENV DOCKER_HOST tcp://dind:2375

RUN mkdir /var/jenkins_home/jobs && \
	mkdir /var/jenkins_home/jobs/computer-database

ADD files/jenkins /etc/default/jenkins
ADD files/computer-database/ /var/jenkins_home/jobs/computer-database

ADD files/dao.properties /home/dao.properties
ADD files/run.sh /home/run.sh
