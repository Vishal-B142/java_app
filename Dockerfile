# Use official Tomcat image as base
FROM tomcat:10.1-jdk17-temurin

# Set working directory (optional)
WORKDIR /usr/local/tomcat/webapps/

# Copy the WAR file into Tomcat's webapps directory
COPY target/test-0.0.1-SNAPSHOT.war test.war

# Expose Tomcat's default port
EXPOSE 9090

# Tomcat runs automatically, so no need for ENTRYPOINT
