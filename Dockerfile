FROM openjdk:alpine

LABEL maintainer="Coolcraftteam"


RUN apk upgrade --no-cache --purge -v; \
    apk add wget; \
    wget -q https://launcher.mojang.com/v1/objects/fe123682e9cb30031eae351764f653500b7396c9/server.jar;

WORKDIR /data
VOLUME /data

EXPOSE 25565

CMD echo eula=true > /data/eula.txt && java -Xmx4096M -Xms4096M -jar /server.jar