---
layout: page
title: charts/details/nextcloud-5.5.4
permalink: /charts/details/nextcloud-5.5.4/
---
<p align="center">
    <img src="https://cdn.rawgit.com/docker-library/docs/defa5ffc7123177acd60ddef6e16bddf694cc35f/nextcloud/logo.svg" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] nextcloud fredric18/nextcloud
# uninstall
helm uninstall -n [ namespace ] nextcloud
# untar
helm pull fredric18/nextcloud --untar --version=5.5.4
```
---
### Chart Information
#### description
>A file sharing server that puts the control and security of your own data back into your hands.
   
#### dependencies
>Name | Version | Repository
>---|---|---
>postgresql | 15.5.0 | oci://registry-1.docker.io/bitnamicharts
>mariadb | 18.2.0 | oci://registry-1.docker.io/bitnamicharts
>redis | 19.5.0 | oci://registry-1.docker.io/bitnamicharts
   
#### Chart.yaml
```yaml
apiVersion: v2
appVersion: 29.0.6
created: "2024-09-08T05:08:58.445699884Z"
dependencies:
  - condition: postgresql.enabled
    name: postgresql
    repository: oci://registry-1.docker.io/bitnamicharts
    version: 15.5.0
  - condition: mariadb.enabled
    name: mariadb
    repository: oci://registry-1.docker.io/bitnamicharts
    version: 18.2.0
  - condition: redis.enabled
    name: redis
    repository: oci://registry-1.docker.io/bitnamicharts
    version: 19.5.0
description: A file sharing server that puts the control and security of your own data back into your hands.
digest: 873bd85f2e9a1a66c9902dd4ba07d4242f296829d4dad2f71240673f56c81450
home: https://nextcloud.com/
icon: https://cdn.rawgit.com/docker-library/docs/defa5ffc7123177acd60ddef6e16bddf694cc35f/nextcloud/logo.svg
keywords:
  - nextcloud
  - storage
  - http
  - web
  - php
maintainers:
  - email: skjnldsv@protonmail.com
    name: skjnldsv
  - email: christian.ingenhaag@googlemail.com
    name: chrisingenhaag
  - email: jeff@billimek.com
    name: billimek
name: nextcloud
sources:
  - https://github.com/nextcloud/helm
  - https://github.com/nextcloud/docker
urls:
  - nextcloud-5.5.4.tgz
version: 5.5.4
```
