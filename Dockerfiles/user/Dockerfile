FROM openjdk:14
COPY . /opt/numercity/
EXPOSE 8082

ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=docker", "/opt/numercity/user.jar"]
