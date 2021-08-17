#!/usr/bin/env bash

if [ -d /minecraft/merge ]; then
    echo "> fallback legacy override"
    MINECRAFT_OVERRIDE_DIR=/minecraft/merge
fi

if ls -A ${MINECRAFT_OVERRIDE_DIR}/* >/dev/null 2>&1; then
    echo "> copy override content"
    cp -rf ${MINECRAFT_OVERRIDE_DIR}/* ${MINECRAFT_GAME_DIR}
fi

true
