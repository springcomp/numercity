FROM openjdk:14
COPY . /opt/numercity/
EXPOSE 8083

ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=docker", "/opt/numercity/auth.jar"]
