---
layout: page
title: charts/details/minecraft-4.15.0
permalink: /charts/details/minecraft-4.15.0/
---
<p align="center">
    <img src="null" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] minecraft fredric18/minecraft
# uninstall
helm uninstall -n [ namespace ] minecraft
# untar
helm pull fredric18/minecraft --untar --version=4.15.0
```
---
### Chart Information
#### description
>Minecraft server
   
#### Chart.yaml
```yaml
annotations:
  artifacthub.io/links: |
    - name: Image source
      url: https://github.com/itzg/docker-minecraft-server
    - name: Image DockerHub
      url: https://hub.docker.com/r/itzg/minecraft-server
apiVersion: v1
appVersion: SeeValues
created: "2024-09-08T05:08:58.429050932Z"
description: Minecraft server
digest: d358dafacd637743abdb057318773e44fbf13edb8f4e606d7c204a92d0dedad9
home: https://minecraft.net/
keywords:
  - game
  - server
maintainers:
  - email: gtaylor@gc-taylor.com
    name: gtaylor
  - email: jeff@billimek.com
    name: billimek
  - email: itzgeoff@gmail.com
    name: itzg
  - email: yannik@carbongem.com
    name: bibz87
name: minecraft
sources:
  - https://github.com/itzg/minecraft-server-charts
urls:
  - minecraft-4.15.0.tgz
version: 4.15.0
```
