FROM tomcat:8.0.20-jre7
### Good stuff
COPY target/*.war /user/local/tomcat/webapps/maven-web-app.war
