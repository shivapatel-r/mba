FROM eclipse-temurin:21-jdk
EXPOSE 8080
COPY target/*.jar spring-mba.jar
ENTRYPOINT ["java","-jar","spring-mba.jar"]