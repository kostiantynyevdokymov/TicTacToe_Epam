FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY target/apigw-lambda-ddb-1.0-SNAPSHOT.jar tictactoeepam.jar
EXPOSE 3000
ENTRYPOINT exec java $JAVA_OPTS -jar tictactoeepam.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar tictactoeepam.jar
