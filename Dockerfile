FROM tomcat:latest
MAINTAINER "ravimore001@gmail.com"
COPY target/LoginWebApp.war /usr/local/tocat/webapps
EXPOSE 8080
WORKDIR /usr/local/tocat/webapps
CMD ["catalina.sh" ,"run"]
