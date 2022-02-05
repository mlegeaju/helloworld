# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "mathiaslegeaju@gmail.com"
RUN cd webapps.dist && cp -R * ../webapps
COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps
