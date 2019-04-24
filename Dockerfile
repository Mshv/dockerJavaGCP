# OpenJDK JRE
FROM openjdk:8

# copy WAR into image
# COPY postgres-demo-${project.version}-SNAPSHOT.jar /app.jar
COPY /target/docker-java-gcp-0.0.1-SNAPSHOT.jar docker-java-gcp.jar

EXPOSE 8080

# run application with this command line
CMD ["/usr/bin/java","-jar","/app.jar"]