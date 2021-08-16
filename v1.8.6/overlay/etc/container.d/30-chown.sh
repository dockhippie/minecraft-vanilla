#!/usr/bin/env bash

if [[ "${MINECRAFT_SKIP_CHOWN}" != "true" ]]
then
  echo "> chown data directory"
  find ${MINECRAFT_DATA_DIR} \( \! -user minecraft -o \! -group minecraft \) -print0 | xargs -0 -r chown minecraft:minecraft

  echo "> chown game directory"
  find ${MINECRAFT_GAME_DIR} \( \! -user minecraft -o \! -group minecraft \) -print0 | xargs -0 -r chown minecraft:minecraft

  echo "> chown world directory"
  find ${MINECRAFT_WORLD_DIR} \( \! -user minecraft -o \! -group minecraft \) -print0 | xargs -0 -r chown minecraft:minecraft

  echo "> chown logs directory"
  find ${MINECRAFT_LOGS_DIR} \( \! -user minecraft -o \! -group minecraft \) -print0 | xargs -0 -r chown minecraft:minecraft
fi

true
