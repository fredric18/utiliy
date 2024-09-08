---
layout: page
title: charts/details/palworld-0.1.0
permalink: /charts/details/palworld-0.1.0/
---
<p align="center">
    <img src="https://cdn.akamai.steamstatic.com/steam/apps/1623730/header.jpg" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] palworld fredric18/palworld
# uninstall
helm uninstall -n [ namespace ] palworld
# untar
helm pull fredric18/palworld --untar --version=0.1.0
```
---
### Chart Information
#### description
>This chart will provide a Palworld server installation on a kubernetes cluster
   
#### Chart.yaml
```yaml
annotations:
  artifacthub.io/alternativeName: palworld-server
  artifacthub.io/images: |
    - name: palworld-server-docker
      image: thijsvanloef/palworld-server-docker:latest
  artifacthub.io/license: MIT
  artifacthub.io/links: |
    - name: Chart source
      url: https://github.com/thijsvanloef/palworld-server-docker/tree/main/charts/palworld
    - name: Docker image source
      url: https://github.com/thijsvanloef/palworld-server-docker
  artifacthub.io/screenshots: |
    - title: PalWorld
      url: https://cdn.akamai.steamstatic.com/steam/apps/1623730/header.jpg
apiVersion: v2
appVersion: latest
created: "2024-09-08T04:39:03.964868305Z"
description: This chart will provide a Palworld server installation on a kubernetes cluster
digest: 8e2af0fabaf42c4f63650cf252a00e594afe54639e92f3f0578562bad1c7c017
home: https://github.com/thijsvanloef/palworld-server-docker
icon: https://cdn.akamai.steamstatic.com/steam/apps/1623730/header.jpg
keywords:
  - palworld
  - server
  - kubernetes
  - helm
maintainers:
  - email: filipe.souza@mestre8d.com
    name: Filipe Souza
    url: https://github.com/Filipe-Souza
  - name: Twinki
    url: https://github.com/Twinki14
name: palworld
sources:
  - https://github.com/thijsvanloef/palworld-server-docker
type: application
urls:
  - palworld-0.1.0.tgz
version: 0.1.0
```
