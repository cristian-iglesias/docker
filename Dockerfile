ARG JAVA_VERSION
FROM bellsoft/liberica-openjdk-debian:$JAVA_VERSION

# Set the working directory inside the container
WORKDIR /app

# Copy your application's JAR file into the container
COPY target/your-app.jar /app/your-app.jar

# Expose the port your application runs on
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "/app/your-app.jar"]