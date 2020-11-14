FROM openjdk:14
COPY . /opt/numercity/
EXPOSE 8080

RUN cp /opt/numercity/certs/numercity.dev.crt /usr/share/pki/ca-trust-source/anchors/ \
 && update-ca-trust

ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=docker", "/opt/numercity/referential.jar"]
