# base image
FROM debian:11

# install mariadb
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install mariadb-server -y

# Copy the configuration file to the container
COPY ./conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf

# copy scrip to container
COPY ./db_script /script
RUN chmod 777 script

# Expose the MySQL port
# EXPOSE 3306

CMD ["./script"]