FROM eclipse-temurin:17-jdk 
COPY target/*.jar app.jar 
CMD ["java", "-jar", "app.jar"]
FROM tomcat:9.0 
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war 
EXPOSE 8080 
CMD ["catalina.sh","run"] 
