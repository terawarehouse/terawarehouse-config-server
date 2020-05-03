FROM adoptopenjdk/openjdk11:jdk-11.0.7_10-alpine as build

LABEL author czetsuya@gmail.com

WORKDIR /workspace/app

COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src

RUN ./mvnw install -DskipTests
RUN mkdir -p target/dependency && (cd target/dependency; jar -xf ../*.jar)

FROM adoptopenjdk/openjdk11:alpine-jre

LABEL author czetsuya@gmail.com

# Refer to Maven build -> finalName
ARG JAR_FILE=target/terawarehouse-config-server.jar

RUN addgroup -S spring && adduser -S spring -G spring
USER spring

ARG DEPENDENCY=/workspace/app/target/dependency
COPY --from=build ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY --from=build ${DEPENDENCY}/META-INF /app/META-INF
COPY --from=build ${DEPENDENCY}/BOOT-INF/classes /app

ENTRYPOINT ["java","-cp","app:app/lib/*","com.terawarehouse.TerawarehouseConfigServerApplication"]