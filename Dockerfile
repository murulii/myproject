# Use a base image with Java installed
FROM openjdk:8-jdk-alpine

# Set the working directory
WORKDIR /app

# Copy the JAR file to the container
COPY target/myapp.jar .

# Expose the port on which the application will run
EXPOSE 8080

# Start the application
CMD ["java", "-jar", "myapp.jar"]

