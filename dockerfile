FROM openjdk:17
EXPOSE 8761
LABEL name="service-registry"
LABEL artifact="service-registry-java-backend"
ADD target/Service-Registry-0.0.1-SNAPSHOT.jar app.jar
COPY target/Service-Registry-0.0.1-SNAPSHOT.jar Service-Registry-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/app.jar"]