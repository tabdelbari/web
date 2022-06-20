FROM maven:3-alpine as build
COPY . /app
WORKDIR /app
RUN mvn install -DskipTests

FROM openjdk:17-alpine
COPY --from=build /app/target/*.jar /app/app.jar
WORKDIR /app
ENTRYPOINT ["java","-jar","app.jar"]
EXPOSE 8080