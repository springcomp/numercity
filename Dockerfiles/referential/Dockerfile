FROM openjdk:14
COPY . /opt/referential/
EXPOSE 8080

ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=dev", "/opt/referential/referential.jar"]
