#!/usr/bin/env bash

declare -x MINECRAFT_GAME_DIR
[[ -z "${MINECRAFT_GAME_DIR}" ]] && MINECRAFT_GAME_DIR="/usr/share/minecraft"

declare -x MINECRAFT_DATA_DIR
[[ -z "${MINECRAFT_DATA_DIR}" ]] && MINECRAFT_DATA_DIR="/var/lib/minecraft"

declare -x MINECRAFT_LOGS_DIR
[[ -z "${MINECRAFT_LOGS_DIR}" ]] && MINECRAFT_LOGS_DIR="${MINECRAFT_DATA_DIR}/logs"

declare -x MINECRAFT_WORLD_DIR
[[ -z "${MINECRAFT_WORLD_DIR}" ]] && MINECRAFT_WORLD_DIR="${MINECRAFT_DATA_DIR}/world"

declare -x MINECRAFT_OVERRIDE_DIR
[[ -z "${MINECRAFT_OVERRIDE_DIR}" ]] && MINECRAFT_OVERRIDE_DIR="/etc/minecraft/override"

declare -x MINECRAFT_OPTS
[[ -z "${MINECRAFT_OPTS}" ]] && MINECRAFT_OPTS="${SERVER_OPTS:-nogui}"
