FROM eclipse-temurin:11
EXPOSE 8080
ARG APP_NAME=test
ARG APP_JAR=${APP_NAME}.jar
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} test.jar
ENTRYPOINT ["java","-jar","test.jar"]