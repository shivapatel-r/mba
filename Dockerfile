FROM alpine/java:21-jdk
EXPOSE 8085
COPY target/moviebooking.jar spring-mba.jar
ENTRYPOINT [ "java","-jar","spring-mba.jar" ]