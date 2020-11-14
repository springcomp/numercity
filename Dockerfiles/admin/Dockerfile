FROM openjdk:14
COPY . /opt/numercity/
EXPOSE 8087

ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=docker", "/opt/numercity/admin.jar"]
