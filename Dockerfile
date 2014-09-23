FROM paulkling/tomcat:6

MAINTAINER Paul Kling <pkling@gmail.com>

ADD deploy /tomcat/deploy
ADD build/libs/simple-web-app.war /tomcat/webapps/simple-web-app.war

EXPOSE 8080
CMD ["/run.sh"]