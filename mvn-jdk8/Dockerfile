FROM debian:latest

RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y apt-utils && \
	apt-get install -y dpkg

# Sets the repo to get JDK8
RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee /etc/apt/sources.list.d/webupd8team-java.list
RUN echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list

RUN ls /etc/apt/sources.list.d/

RUN cat /etc/apt/sources.list.d/webupd8team-java.list 

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886

# Accepts the oracle license automatically
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get update && \
 	apt-get install -y oracle-java8-installer && \
	apt-get install -y maven

