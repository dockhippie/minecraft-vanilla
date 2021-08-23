# minecraft-vanilla

[![Docker Build](https://github.com/dockhippie/minecraft-vanilla/workflows/docker/badge.svg)](https://github.com/dockhippie/minecraft-vanilla/actions?query=workflow%3Adocker) [![Readme Build](https://github.com/dockhippie/minecraft-vanilla/workflows/readme/badge.svg)](https://github.com/dockhippie/minecraft-vanilla/actions?query=workflow%3Areadme) [![Docker Size](https://img.shields.io/docker/image-size/webhippie/minecraft-vanilla/latest)](#) [![Docker Pulls](https://img.shields.io/docker/pulls/webhippie/minecraft-vanilla)](https://hub.docker.com/r/webhippie/minecraft-vanilla) [![GitHub Repo](https://img.shields.io/badge/github-repo-yellowgreen)](https://github.com/dockhippie/minecraft-vanilla)

These are docker images for [Vanilla Minecraft](https://minecraft.net) running on our [AdoptOpenJDK image](https://github.com/dockhippie/adoptopenjdk).

## Versions

For the available versions please look at [Docker Hub](https://hub.docker.com/r/webhippie/minecraft-vanilla/tags) or [Quay](https://quay.io/repository/webhippie/minecraft-vanilla?tab=tags) or check the existing folders within the [GitHub repository](https://github.com/dockhippie/minecraft-vanilla).

## Volumes

*  /var/lib/minecraft
*  /etc/minecraft/override

## Ports

*  25565
*  25575

## Available environment variables

```console
MINECRAFT_ADDITIONAL_PROPERTIES =
MINECRAFT_ALLOW_FLIGHT = false
MINECRAFT_ALLOW_NETHER = true
MINECRAFT_ANNOUNCE_PLAYER_ACHIEVMENTS = true
MINECRAFT_DATA_DIR = /var/lib/minecraft
MINECRAFT_DIFFICULTY = 1
MINECRAFT_ENABLE_COMMAND_BLOCK = false
MINECRAFT_ENABLE_QUERY = false
MINECRAFT_ENABLE_RCON = true
MINECRAFT_FORCE_GAMEMODE = false
MINECRAFT_GAME_DIR = /usr/share/minecraft
MINECRAFT_GAMEMODE = 0
MINECRAFT_GENERATE_STRUCTURES = true
MINECRAFT_GENERATOR_SETTINGS =
MINECRAFT_HARDCORE = false
MINECRAFT_JAVA_OPTS = --server -XX:+UseConcMarkSweepGC
MINECRAFT_LEVEL_NAME = world
MINECRAFT_LEVEL_SEED =
MINECRAFT_LEVEL_TYPE = DEFAULT
MINECRAFT_LOGS_DIR = ${MINECRAFT_DATA_DIR}/logs
MINECRAFT_MAX_BUILD_HEIGHT = 256
MINECRAFT_MAX_PLAYERS = 20
MINECRAFT_MAX_TICK_TIME = 60000
MINECRAFT_MAX_WORLD_SIZE = 29999984
MINECRAFT_MAXHEAP = 2048M
MINECRAFT_MINHEAP = 512M
MINECRAFT_MOTD = Minecraft
MINECRAFT_NETWORK_COMPRESSION_THRESHOLD = 256
MINECRAFT_ONLINE_MODE = true
MINECRAFT_OP_PERMISSION_LEVEL = 4
MINECRAFT_OPTS = nogui
MINECRAFT_OVERRIDE_DIR = /etc/minecraft/override
MINECRAFT_PLAYER_IDLE_TIMEOUT = 0
MINECRAFT_PVP = false
MINECRAFT_RCON_PASSWORD = webhippie
MINECRAFT_RCON_PORT = 25575
MINECRAFT_RESOURCE_PACK =
MINECRAFT_RESOURCE_PACK_HASH =
MINECRAFT_SERVER_IP = 0.0.0.0
MINECRAFT_SERVER_PORT = 25565
MINECRAFT_SNOOPER_ENABLED = true
MINECRAFT_SPAWN_ANIMALS = true
MINECRAFT_SPAWN_MONSTERS = true
MINECRAFT_SPAWN_NPCS = true
MINECRAFT_USE_NATIVE_TRANSPORT = true
MINECRAFT_VIEW_DISTANCE = 10
MINECRAFT_WHITE_LIST = false
MINECRAFT_WORLD_DIR = ${MINECRAFT_DATA_DIR}/world
```

## Inherited environment variables

*  [webhippie/adoptopenjdk](https://github.com/dockhippie/adoptopenjdk#available-environment-variables)
*  [webhippie/alpine](https://github.com/dockhippie/alpine#available-environment-variables)

## Contributing

Fork -> Patch -> Push -> Pull Request

## Authors

*  [Thomas Boerger](https://github.com/tboerger)

## License

MIT

## Copyright

```console
Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
```
