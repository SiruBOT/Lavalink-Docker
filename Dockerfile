# Java 11 image https://hub.docker.com/_/eclipse-temurin/
FROM azul/zulu-openjdk:13-latest
# Setup workdir
WORKDIR /opt/lavalink
# Copy download script to workdir
COPY ./scripts/download.sh /opt/lavalink/download.sh
# Install command line tools
RUN apt-get update -y && apt-get install curl wget jq
# Run download script
RUN chmod a+x ./download.sh && ./download.sh && rm ./download.sh
# Run jar file
CMD ["java", "-jar", "Lavalink.jar"]
