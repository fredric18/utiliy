---
layout: page
title: charts/details/harbor:19.1.1
permalink: /charts/details/harbor:19.1.1/
---
<p align="center">
    <img src="https://bitnami.com/assets/stacks/harbor-core/img/harbor-core-stack-220x234.png" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] harbor fredric18/harbor
# uninstall
helm uninstall -n [ namespace ] harbor
# untar
helm pull fredric18/harbor --untar --version=19.1.1
```
---
### Chart Information
#### description
>Harbor is an open source trusted cloud-native registry to store, sign, and scan content. It adds functionalities like security, identity, and management to the open source Docker distribution.
   
#### images
```shell
docker pull docker.io/bitnami/harbor-adapter-trivy:2.9.1-debian-11-r0
docker pull docker.io/bitnami/harbor-core:2.9.1-debian-11-r1
docker pull docker.io/bitnami/harbor-exporter:2.9.1-debian-11-r1
docker pull docker.io/bitnami/harbor-jobservice:2.9.1-debian-11-r1
docker pull docker.io/bitnami/harbor-registry:2.9.1-debian-11-r1
docker pull docker.io/bitnami/harbor-registryctl:2.9.1-debian-11-r1
docker pull docker.io/bitnami/harbor-portal:2.9.1-debian-11-r0
docker pull docker.io/bitnami/nginx:1.25.3-debian-11-r1
docker pull docker.io/bitnami/os-shell:11-debian-11-r91
docker pull docker.io/bitnami/postgresql:13.13.0-debian-11-r0
```
   
#### dependencies
>Name | Version | Repository
>---|---|---
>redis | 18.x.x | oci://registry-1.docker.io/bitnamicharts
>postgresql | 13.x.x | oci://registry-1.docker.io/bitnamicharts
>common | 2.x.x | oci://registry-1.docker.io/bitnamicharts
   
#### Chart.yaml
```yaml
annotations:
  category: Infrastructure
  images: |
    - name: harbor-adapter-trivy
      image: docker.io/bitnami/harbor-adapter-trivy:2.9.1-debian-11-r0
    - name: harbor-core
      image: docker.io/bitnami/harbor-core:2.9.1-debian-11-r1
    - name: harbor-exporter
      image: docker.io/bitnami/harbor-exporter:2.9.1-debian-11-r1
    - name: harbor-jobservice
      image: docker.io/bitnami/harbor-jobservice:2.9.1-debian-11-r1
    - name: harbor-registry
      image: docker.io/bitnami/harbor-registry:2.9.1-debian-11-r1
    - name: harbor-registryctl
      image: docker.io/bitnami/harbor-registryctl:2.9.1-debian-11-r1
    - name: harbor-portal
      image: docker.io/bitnami/harbor-portal:2.9.1-debian-11-r0
    - name: nginx
      image: docker.io/bitnami/nginx:1.25.3-debian-11-r1
    - name: os-shell
      image: docker.io/bitnami/os-shell:11-debian-11-r91
    - name: postgresql
      image: docker.io/bitnami/postgresql:13.13.0-debian-11-r0
  licenses: Apache-2.0
apiVersion: v2
appVersion: 2.9.1
created: "2024-09-06T03:45:34.675071311Z"
dependencies:
  - condition: redis.enabled
    name: redis
    repository: oci://registry-1.docker.io/bitnamicharts
    version: 18.x.x
  - condition: postgresql.enabled
    name: postgresql
    repository: oci://registry-1.docker.io/bitnamicharts
    version: 13.x.x
  - name: common
    repository: oci://registry-1.docker.io/bitnamicharts
    tags:
      - bitnami-common
    version: 2.x.x
description: Harbor is an open source trusted cloud-native registry to store, sign, and scan content. It adds functionalities like security, identity, and management to the open source Docker distribution.
digest: c4ba080530802c0fa71171bffd76ade304374358d48fd887f0f03c5b7bb1ae1c
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/harbor-core/img/harbor-core-stack-220x234.png
keywords:
  - docker
  - registry
  - vulnerability
  - scan
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: harbor
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/harbor
urls:
  - harbor-19.1.1.tgz
version: 19.1.1
```
