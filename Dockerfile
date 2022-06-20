FROM openjdk:17-alpine
COPY . /app
WORKDIR /app
RUN ./mvnw install -DskipTests
RUN mv target/*.jar /app/app.jar
ENTRYPOINT ["java","-jar","app.jar"]
EXPOSE 8080