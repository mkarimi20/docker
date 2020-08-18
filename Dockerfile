# DOCKERFILE TO run container to deploy a new service which will render a static website

FROM ubuntu:18.04
RUN apt-get update
LABEL name=312.school
RUN apt-get install nginx -y
RUN apt-get install python -y
COPY webcontent/ /var/www/html/
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
