# Java 11 image https://hub.docker.com/_/eclipse-temurin/
FROM eclipse-temurin:11-alpine
# Setup workdir
WORKDIR /opt/lavalink
# Copy download script to workdir
COPY ./scripts/download.sh /opt/lavalink/download.sh
# Install command line tools
RUN apk add jq curl
# Install native dependency
# TODO: Alpine linux native fatal error, something wrong
RUN apk add libstdc++
# Run download script
RUN chmod a+x ./download.sh && ./download.sh && rm ./download.sh
# Run jar file
CMD ["java", "-jar", "Lavalink.jar"]