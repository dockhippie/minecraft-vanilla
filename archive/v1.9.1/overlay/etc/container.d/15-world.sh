#!/usr/bin/env bash

if [ -d /minecraft/world ]; then
    echo "> fallback legacy world"
    MINECRAFT_WORLD_DIR=/minecraft/world
fi

if [ ! -d ${MINECRAFT_WORLD_DIR} ]; then
    echo "> creating world dir"
    mkdir -p ${MINECRAFT_WORLD_DIR}
fi

if [ ! -L ${MINECRAFT_GAME_DIR}/world ]; then
    echo "> creating world symlink"
    ln -sf ${MINECRAFT_WORLD_DIR} ${MINECRAFT_GAME_DIR}/world
fi

true
