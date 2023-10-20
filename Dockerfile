FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
COPY target/*.war assignment.war
ENTRYPOINT ["java","-jar","/assignment.war"]
EXPOSE 8080