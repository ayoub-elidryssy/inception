# base image
FROM debian:buster

# install wordpress
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get -y install wget
RUN apt-get update -y && apt-get install -y php7.3 php7.3-fpm php7.3-mysql mariadb-client
RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www
RUN cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz


# copy configuration to container
COPY ./www.conf /etc/php/7.3/fpm/pool.d/www.conf

# istall wp-cli
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod 777 wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
RUN mkdir /run/php


COPY ./script.sh .
RUN chmod +x script.sh

CMD [ "./script.sh"]