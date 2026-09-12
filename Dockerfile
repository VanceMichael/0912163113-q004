FROM eclipse-temurin:21-jdk-alpine
WORKDIR /app
COPY . .
RUN javac -d out src/main/java/App.java
EXPOSE 8080
CMD ["java","-cp","out","App"]
