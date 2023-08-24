FROM tomcat:latest
MAINTAINER "ravimore001@gmail.com"
COPY ./LoginWebApp /usr/local/tocat/webapps
EXPOSE 8080
