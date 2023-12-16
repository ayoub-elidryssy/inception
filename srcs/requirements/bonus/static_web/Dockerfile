FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install nginx -y

# Copy configeration files to the container
COPY file.conf /etc/nginx/sites-enabled 

ENTRYPOINT ["nginx", "-g", "daemon off;"] 