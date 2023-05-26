# Use multistage docker build to avoid cluttering the final image with build artifacts
FROM gradle:6.0.1-jdk8 AS builder
WORKDIR /app

# Copy the app artifacts into a folder inside the image
COPY build.gradle settings.gradle ./
COPY src ./src/
RUN gradle installDist

# Application container based on alpine with OpenJDK
FROM alpine:latest
RUN apk add -U openjdk8-jre

# Set environment variables and working directory
ENV ARTIFACT_NAME=charts.jar
ENV APP_HOME=/app
WORKDIR $APP_HOME

# Copy the compiled application artifacts from the build stage inside the application container
COPY --from=builder /app/build/install/charts .

# Run the application with a startup script
ENTRYPOINT ["sh", "-c", "bin/charts"]