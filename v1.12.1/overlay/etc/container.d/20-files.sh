#!/usr/bin/env bash

if [ ! -f ${MINECRAFT_DATA_DIR}/banned-ips.json ]; then
    echo "> creating banned-ips file"
    echo "[]" > ${MINECRAFT_DATA_DIR}/banned-ips.json
fi

if [ ! -L ${MINECRAFT_GAME_DIR}/banned-ips.json ]; then
    echo "> creating banned-ips symlink"
    ln -sf ${MINECRAFT_DATA_DIR}/banned-ips.json ${MINECRAFT_GAME_DIR}/banned-ips.json
fi

if [ ! -f ${MINECRAFT_DATA_DIR}/banned-players.json ]; then
    echo "> creating banned-players file"
    echo "[]" > ${MINECRAFT_DATA_DIR}/banned-players.json
fi

if [ ! -L ${MINECRAFT_GAME_DIR}/banned-players.json ]; then
    echo "> creating banned-players symlink"
    ln -sf ${MINECRAFT_DATA_DIR}/banned-players.json ${MINECRAFT_GAME_DIR}/banned-players.json
fi

if [ ! -f ${MINECRAFT_DATA_DIR}/ops.json ]; then
    echo "> creating ops file"
    echo "[]" > ${MINECRAFT_DATA_DIR}/ops.json
fi

if [ ! -L ${MINECRAFT_GAME_DIR}/ops.json ]; then
    echo "> creating ops symlink"
    ln -sf ${MINECRAFT_DATA_DIR}/ops.json ${MINECRAFT_GAME_DIR}/ops.json
fi

if [ ! -f ${MINECRAFT_DATA_DIR}/whitelist.json ]; then
    echo "> creating whitelist file"
    echo "[]" > ${MINECRAFT_DATA_DIR}/whitelist.json
fi

if [ ! -L ${MINECRAFT_GAME_DIR}/whitelist.json ]; then
    echo "> creating whitelist symlink"
    ln -sf ${MINECRAFT_DATA_DIR}/whitelist.json ${MINECRAFT_GAME_DIR}/whitelist.json
fi

if [ ! -f ${MINECRAFT_DATA_DIR}/usercache.json ]; then
    echo "> creating usercache file"
    echo "[]" > ${MINECRAFT_DATA_DIR}/usercache.json
fi

if [ ! -L ${MINECRAFT_GAME_DIR}/usercache.json ]; then
    echo "> creating usercache symlink"
    ln -sf ${MINECRAFT_DATA_DIR}/usercache.json ${MINECRAFT_GAME_DIR}/usercache.json
fi

true
