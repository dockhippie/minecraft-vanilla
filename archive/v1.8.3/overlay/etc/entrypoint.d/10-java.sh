#!/usr/bin/env bash

declare -x MINECRAFT_MAXHEAP
[[ -z "${MINECRAFT_MAXHEAP}" ]] && MINECRAFT_MAXHEAP="${SERVER_MAXHEAP:-2048M}"

declare -x MINECRAFT_MINHEAP
[[ -z "${MINECRAFT_MINHEAP}" ]] && MINECRAFT_MINHEAP="${SERVER_MINHEAP:-512M}"

declare -x MINECRAFT_JAVA_OPTS
[[ -z "${MINECRAFT_JAVA_OPTS}" ]] && MINECRAFT_JAVA_OPTS="${JAVA_OPTS:--server -XX:+UseConcMarkSweepGC}"

true