FROM tomcat:latest
MAINTAINER "jagadeeshvellampati0@gmail.com"
COPY target/LoginWebApp.war /usr/local/tomcat/webapps
WORKDIR /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh" ,"run"]
