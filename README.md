# Minecraft

These are docker images for Minecraft running on an
[openSUSE 13.2 container](https://registry.hub.docker.com/_/opensuse/)


## Usage

```
docker run -v /minecraft/config -v /minecraft/world -v /minecraft/logs --name minecraft-data busybox true
docker run -p 25565:25565 -d --volumes-from minecraft-data --name minecraft webhippie/minecraft:latest start
```


## Versions

* [latest](https://github.com/dockhippie/minecraft/tree/master)
  available as ```webhippie/minecraft:latest``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/minecraft/)
* [1.8.1](https://github.com/dockhippie/minecraft/tree/1.8.1)
  available as ```webhippie/minecraft:1.8.1``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/minecraft/)
* [1.8](https://github.com/dockhippie/minecraft/tree/1.8)
  available as ```webhippie/minecraft:1.8``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/minecraft/)
* [1.7.10](https://github.com/dockhippie/minecraft/tree/1.7.10)
  available as ```webhippie/minecraft:1.7.10``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/minecraft/)


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
