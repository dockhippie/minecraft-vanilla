# Minecraft

[![](https://images.microbadger.com/badges/image/webhippie/minecraft-vanilla.svg)](https://microbadger.com/images/webhippie/minecraft-vanilla "Get your own image badge on microbadger.com")

These are docker images for [Vanilla Minecraft](https://minecraft.net) running on a [Java container](https://registry.hub.docker.com/u/webhippie/java/).


## Versions

To get an overview about the available versions please take a look at the [GitHub branches](https://github.com/dockhippie/minecraft-vanilla/branches/all) or our [Docker Hub tags](https://hub.docker.com/r/webhippie/minecraft-vanilla/tags/), these lists are always up to date.


## Volumes

* /minecraft/merge
* /minecraft/world
* /minecraft/logs


## Ports

* 25565
* 25575


## Available environment variables

```bash
ENV SERVER_MAXHEAP 2048M
ENV SERVER_MINHEAP 512M
ENV SERVER_MAXPERM 128M
ENV SERVER_OPTS nogui
ENV SERVER_MOTD Minecraft
ENV SERVER_RCONPWD webhippie
ENV JAVA_OPTS -server -XX:+UseConcMarkSweepGC
```


## Inherited environment variables

* [webhippie/java](https://github.com/dockhippie/java#available-environment-variables)
* [webhippie/alpine](https://github.com/dockhippie/alpine#available-environment-variables)


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

```
Copyright (c) 2015-2017 Thomas Boerger <http://www.webhippie.de>
```
