#!/usr/bin/env bash

if [[ ! "$(id -g minecraft)" =~ "${PGID}" ]]; then
    echo "> enforcing group id"
    groupmod -o -g ${PGID} minecraft
fi

if [[ ! "$(id -u minecraft)" =~ "${PGID}" ]]; then
    echo "> enforcing user id"
    usermod -o -u ${PUID} minecraft
fi

true
