# FROM eclipse-temurin:17-jdk-alpine
    
# EXPOSE 8080

# RUN ls 

# ENV APP_HOME /usr/src/app

# COPY app/*.jar $APP_HOME/app.jar

# WORKDIR $APP_HOME

# CMD ["java", "-jar", "app.jar"]


FROM eclipse-temurin:17-jre

ARG NEXUS_URL
ARG NEXUS_USER
ARG NEXUS_PASS
ARG VERSION

# Create non-root user
RUN useradd -m appuser

WORKDIR /app

RUN apt-get update && apt-get install -y curl

RUN curl -u ${NEXUS_USER}:${NEXUS_PASS} \
 ${NEXUS_URL}/repository/maven-snapshots/com/example/bankapp/${VERSION}/bankapp-${VERSION}.jar \
 -o app.jar

# Change ownership
RUN chown -R appuser:appuser /app

# Switch to non-root user
USER appuser

EXPOSE 8080
ENTRYPOINT ["java","-jar","/app/app.jar"]

