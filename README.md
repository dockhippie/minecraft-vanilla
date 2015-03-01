# Minecraft

These are docker images for Minecraft vanilla running on an
[Alpine Linux container](https://registry.hub.docker.com/u/webhippie/alpine/)


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
   bash              Start a shell on container
   commands          List all available sub commands
   config            Update server config
   console           Start interactive console
   deop              Deop a specific player
   mcrcon            Execute a remote command
   op                Op a specific player
   pid               Return the process id of the server
   prepare           Prepare environment
   reload            Reload the server
   running           Check if the server is running
   save-all          Save the current world state
   save-off          Disable the autosave feature
   save-on           Enable the autosave feature
   say               Say something on the server
   start             Start the server
   stop              Stop the server
   weather-clear     Set the weather to clear
   weather-rain      Set the weather to rain
   weather-thunder   Set the weather to thunder
   whitelist         Whitelist on the server
   whitelist-add     Add player to whitelist
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
