# Use an official OpenJDK runtime as the base image
FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the Spring Boot JAR file into the container
COPY target/spring-boot-maven.jar app.jar


# Expose the port your Spring Boot app is running on
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]
