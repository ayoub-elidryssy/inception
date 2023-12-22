FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install nginx -y

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y vim

# Copy configeration files to the container
COPY file.conf /etc/nginx/sites-enabled 

EXPOSE 8500

ENTRYPOINT ["nginx", "-g", "daemon off;"] 