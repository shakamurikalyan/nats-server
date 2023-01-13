
FROM ubuntu:latest
FROM node:16

# add the docker-compose.yml file to the current working directory
WORKDIR /app

COPY . .

EXPOSE 9697 
# install docker-compose
RUN apt update &&  apt install curl -y
RUN curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose
#RUN apt install docker-compose

RUN ["npm","start"]