#!/usr/bin/env bash

if [[ "${MINECRAFT_SKIP_SERVER_PROPERTIES}" != "true" ]]; then
    echo "> writing server properties"
    gomplate -V \
        -o ${MINECRAFT_DATA_DIR}/server.properties \
        -f /etc/templates/server.properties.tmpl || exit 1

    if [ ! -L ${MINECRAFT_GAME_DIR}/server.properties ]; then
        echo "> creating properties symlink"
        ln -sf ${MINECRAFT_DATA_DIR}/server.properties ${MINECRAFT_GAME_DIR}/server.properties
    fi
else
    if [ ! -f ${MINECRAFT_DATA_DIR}/server.properties ]; then
        echo "> creating properties file"
        touch ${MINECRAFT_DATA_DIR}/server.properties
    fi

    if [ ! -L ${MINECRAFT_GAME_DIR}/server.properties ]; then
        echo "> creating properties symlink"
        ln -sf ${MINECRAFT_DATA_DIR}/server.properties ${MINECRAFT_GAME_DIR}/server.properties
    fi
fi

true
