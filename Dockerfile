FROM adoptopenjdk/openjdk11:alpine-jre

MAINTAINER czetsuya@gmail.com

# Refer to Maven build -> finalName
ARG JAR_FILE=target/terawarehouse-config-server.jar

RUN addgroup -S spring && adduser -S spring -G spring
USER spring

# cd /opt/app
WORKDIR /opt/app

VOLUME /tmp

# cp target/spring-boot-web.jar /opt/app/app.jar
COPY ${JAR_FILE} app.jar

# java -jar /opt/app/app.jar
# Use sh to support JAVA_OPTS
# Use ${@} to pass all command arguments
ENTRYPOINT ["sh", "-c", "java ${JAVA_OPTS} -jar /app.jar ${0} ${@}"]