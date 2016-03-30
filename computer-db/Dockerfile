FROM mysql:5.5
MAINTAINER  Aurélien LEJEAU

# ENV MYSQL_ROOT_PASSWORD root
ENV MYSQL_ALLOW_EMPTY_PASSWORD true

COPY install-files/database.sql /docker-entrypoint-initdb.d/
