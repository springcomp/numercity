FROM openjdk:14
COPY . /opt/numercity/
EXPOSE 8081

ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=docker", "/opt/numercity/request.jar"]
