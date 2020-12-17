FROM openjdk:8-jre-alpine

ARG SENTINEL_VERSION=1.8.0

RUN wget -O sentinel-dashboard.jar https://github.com/alibaba/Sentinel/releases/download/v${SENTINEL_VERSION}/sentinel-dashboard-${SENTINEL_VERSION}.jar

EXPOSE 8080
ENV USERNAME=sentinel \
    PASSWORD=sentinel \
    PROJECT_NAME=sentinel-dashboard

ENTRYPOINT java -Dserver.port=8080 -Dcsp.sentinel.dashboard.server=localhost:8080 \
            -Dsentinel.dashboard.auth.username=${USERNAME} -Dsentinel.dashboard.auth.password=${PASSWORD} \
            -Dproject.name=${PROJECT_NAME} -jar sentinel-dashboard.jar
