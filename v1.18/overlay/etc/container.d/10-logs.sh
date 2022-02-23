#!/usr/bin/env bash

if [ -d /minecraft/logs ]; then
    echo "> fallback legacy logs"
    MINECRAFT_LOGS_DIR=/minecraft/logs
fi

if [ ! -d ${MINECRAFT_LOGS_DIR} ]; then
    echo "> creating logs dir"
    mkdir -p ${MINECRAFT_LOGS_DIR}
fi

if [ ! -L ${MINECRAFT_GAME_DIR}/logs ]; then
    echo "> creating logs symlink"
    ln -sf ${MINECRAFT_LOGS_DIR} ${MINECRAFT_GAME_DIR}/logs
fi

true
