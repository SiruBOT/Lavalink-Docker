FROM openjdk:13
WORKDIR /usr/src/lavalink
COPY Lavalink.jar /usr/src/lavalink/Lavalink.jar
COPY application.yml /usr/src/lavalink/application.yml
CMD ["java", "-jar", "./Lavalink.jar"]
