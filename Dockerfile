FROM opensuse:harlequin
MAINTAINER Thomas Boerger <thomas@webhippie.de>

ENV MINECRAFT_VERSION 1.8.1
ENV MINECRAFT_URL https://s3.amazonaws.com/Minecraft.Download/versions/${MINECRAFT_VERSION}/minecraft_server.${MINECRAFT_VERSION}.jar
ENV MINECRAFT_JAR minecraft_server.${MINECRAFT_VERSION}.jar

ENV SERVER_MAXHEAP 2048M
ENV SERVER_MINHEAP 512M
ENV SERVER_MAXPERM 128M
ENV SERVER_OPTS nogui
ENV SERVER_MOTD Minecraft
ENV SERVER_RCONPWD webhippie

ENV LANG en_US.utf8
ENV LANGUAGE en_US.utf8
ENV LC_ALL en_US.utf8

RUN mkdir -p /minecraft

ADD bin /usr/bin
ADD scripts /tmp

RUN LC_ALL=C /tmp/prepare.sh

RUN mkdir -p /minecraft/world
RUN mkdir -p /minecraft/logs
RUN mkdir -p /minecraft/merge

RUN mkdir -p /minecraft/template
ADD template /minecraft/template

RUN mkdir -p /minecraft/libexec
ADD libexec /minecraft/libexec
RUN ln -sf /minecraft/libexec/manage /usr/bin/manage

RUN wget -q -O /minecraft/${MINECRAFT_JAR} ${MINECRAFT_URL}

VOLUME ["/minecraft/merge", "/minecraft/world", "/minecraft/logs"]

EXPOSE 25565 25575

WORKDIR /minecraft
ENTRYPOINT ["manage"]
CMD ["bash"]
