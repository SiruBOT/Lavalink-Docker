# Amazon's production ready OpenJDK distribution
FROM amazoncorretto:17-alpine3.18
# Install dependencies
RUN apk update && apk add curl wget jq bash libgcc mpg123 gcompat libstdc++
# Setup workdir
WORKDIR /opt/lavalink
# Copy download script to workdir
COPY ./scripts /opt/lavalink/scripts
# Run download script
RUN chmod a+x ./scripts/download.sh && bash ./scripts/download.sh && rm -rf ./scripts
# Run jar file
CMD ["java", "-jar", "Lavalink.jar"]
