#!/usr/bin/env bash

declare -x SERVER_MAXHEAP
[[ -z "${SERVER_MAXHEAP}" ]] && SERVER_MAXHEAP="2048M"

declare -x SERVER_MINHEAP
[[ -z "${SERVER_MINHEAP}" ]] && SERVER_MINHEAP="512M"

declare -x SERVER_MAXPERM
[[ -z "${SERVER_MAXPERM}" ]] && SERVER_MAXPERM="128M"

declare -x SERVER_OPTS
[[ -z "${SERVER_OPTS}" ]] && SERVER_OPTS="nogui"

declare -x SERVER_MOTD
[[ -z "${SERVER_MOTD}" ]] && SERVER_MOTD="Minecraft"

declare -x SERVER_RCONPWD
[[ -z "${SERVER_RCONPWD}" ]] && SERVER_RCONPWD="webhippie"

declare -x JAVA_OPTS
[[ -z "${JAVA_OPTS}" ]] && JAVA_OPTS="-server -XX:+UseConcMarkSweepGC"

