FROM opensuse:harlequin
MAINTAINER Thomas Boerger <thomas@webhippie.de>

ENV MINECRAFT_VERSION 1.8.1
ENV MINECRAFT_DIR /minecraft
ENV RCON_PASSWORD webhippie

ENV LANG en_US.utf8
ENV LANGUAGE en_US.utf8
ENV LC_ALL en_US.utf8

ADD bin /usr/bin
ADD scripts /tmp

RUN LC_ALL=C /tmp/prepare.sh

RUN mkdir -p ${MINECRAFT_DIR}/config
RUN mkdir -p ${MINECRAFT_DIR}/world
RUN mkdir -p ${MINECRAFT_DIR}/log
RUN mkdir -p ${MINECRAFT_DIR}/template
ADD template ${MINECRAFT_DIR}/template

RUN wget -q -O ${MINECRAFT_DIR}/minecraft_server.jar https://s3.amazonaws.com/Minecraft.Download/versions/${MINECRAFT_VERSION}/minecraft_server.${MINECRAFT_VERSION}.jar

VOLUME ["/minecraft/config", "/minecraft/world", "/minecraft/log"]

EXPOSE 25565 25575

WORKDIR ${MINECRAFT_DIR}
ENTRYPOINT ["manage"]
CMD ["bash"]
