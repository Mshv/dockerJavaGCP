FROM openjdk:8
FROM tomcat:8
ADD /target/docker-java-gcp-0.0.1-SNAPSHOT.jar docker-java-gcp.jar
EXPOSE 8080
ENTRYPOINT["/usr/bin/java","-jar","docker-java-gcp.jar"]
