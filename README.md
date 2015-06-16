# Minecraft

These are docker images for Minecraft vanilla running on an
[Alpine Linux container](https://registry.hub.docker.com/u/webhippie/alpine/).


## Usage

```
docker run -v /minecraft/merge -v /minecraft/world -v /minecraft/logs --name minecraft-data busybox true
docker run -p 25565:25565 -d --volumes-from minecraft-data --name minecraft webhippie/minecraft-vanilla:latest start

# Execute this for further available commands
docker exec -ti minecraft manage help
```


## Versions

* [latest](https://github.com/dockhippie/minecraft-vanilla/tree/master)
  available as ```webhippie/minecraft-vanilla:latest``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/minecraft-vanilla/)
* [1.8.7](https://github.com/dockhippie/minecraft-vanilla/tree/1.8.7)
  available as ```webhippie/minecraft-vanilla:1.8.7``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/minecraft-vanilla/)
* [1.8.6](https://github.com/dockhippie/minecraft-vanilla/tree/1.8.6)
  available as ```webhippie/minecraft-vanilla:1.8.6``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/minecraft-vanilla/)
* [1.8.5](https://github.com/dockhippie/minecraft-vanilla/tree/1.8.5)
  available as ```webhippie/minecraft-vanilla:1.8.5``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/minecraft-vanilla/)
* [1.8.4](https://github.com/dockhippie/minecraft-vanilla/tree/1.8.4)
  available as ```webhippie/minecraft-vanilla:1.8.4``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/minecraft-vanilla/)
* [1.8.3](https://github.com/dockhippie/minecraft-vanilla/tree/1.8.3)
  available as ```webhippie/minecraft-vanilla:1.8.3``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/minecraft-vanilla/)
* [1.8.2](https://github.com/dockhippie/minecraft-vanilla/tree/1.8.2)
  available as ```webhippie/minecraft-vanilla:1.8.2``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/minecraft-vanilla/)
* [1.8.1](https://github.com/dockhippie/minecraft-vanilla/tree/1.8.1)
  available as ```webhippie/minecraft-vanilla:1.8.1``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/minecraft-vanilla/)
* [1.8](https://github.com/dockhippie/minecraft-vanilla/tree/1.8)
  available as ```webhippie/minecraft-vanilla:1.8``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/minecraft-vanilla/)
* [1.7.10](https://github.com/dockhippie/minecraft-vanilla/tree/1.7.10)
  available as ```webhippie/minecraft-vanilla:1.7.10``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/minecraft-vanilla/)


## Available environment variables

```bash
ENV SERVER_MAXHEAP 2048M
ENV SERVER_MINHEAP 512M
ENV SERVER_MAXPERM 128M
ENV SERVER_OPTS nogui
ENV SERVER_MOTD Minecraft
ENV SERVER_RCONPWD webhippie
```


## Available management commands

```bash
Usage: manage <command> [<args>]

Some useful manage commands are:
   commands          List all available sub commands
   console           Start interactive console
   deop              Deop a specific player
   op                Op a specific player
   save-all          Save the current world state
   save-off          Disable the autosave feature
   save-on           Enable the autosave feature
   say               Say something on the server
   weather-clear     Set the weather to clear
   weather-rain      Set the weather to rain
   weather-thunder   Set the weather to thunder
   whitelist-add     Add player to whitelist
   whitelist-list    Whitelist on the server
   whitelist-off     Disable the whitelist
   whitelist-on      Enable the whitelist
   whitelist-reload  Reload the whitelist
   whitelist-remove  Remove player from whitelist
```


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
