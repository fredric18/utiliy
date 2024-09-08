---
layout: page
title: charts/details/redis-19.0.1
permalink: /charts/details/redis-19.0.1/
---
<p align="center">
    <img src="https://bitnami.com/assets/stacks/redis/img/redis-stack-220x234.png" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] redis fredric18/redis
# uninstall
helm uninstall -n [ namespace ] redis
# untar
helm pull fredric18/redis --untar --version=19.0.1
```
---
### Chart Information
#### description
>Redis(R) is an open source, advanced key-value store. It is often referred to as a data structure server since keys can contain strings, hashes, lists, sets and sorted sets.
   
#### images
```shell
docker pull 
docker pull 
docker pull 
docker pull 
docker pull 
```
   
#### dependencies
>Name | Version | Repository
>---|---|---
>common | 2.x.x | oci://registry-1.docker.io/bitnamicharts
   
#### Chart.yaml
```yaml
annotations:
  category: Database
  images: |
    - name: kubectl
      image: docker.io/bitnami/kubectl:1.29.2-debian-12-r3
    - name: os-shell
      image: docker.io/bitnami/os-shell:12-debian-12-r16
    - name: redis
      image: docker.io/bitnami/redis:7.2.4-debian-12-r9
    - name: redis-exporter
      image: docker.io/bitnami/redis-exporter:1.58.0-debian-12-r4
    - name: redis-sentinel
      image: docker.io/bitnami/redis-sentinel:7.2.4-debian-12-r7
  licenses: Apache-2.0
apiVersion: v2
appVersion: 7.2.4
created: "2024-09-08T05:08:58.456807341Z"
dependencies:
  - name: common
    repository: oci://registry-1.docker.io/bitnamicharts
    tags:
      - bitnami-common
    version: 2.x.x
description: Redis(R) is an open source, advanced key-value store. It is often referred to as a data structure server since keys can contain strings, hashes, lists, sets and sorted sets.
digest: 6c71f072089256fd49cd9f09a19f098f1349ea3e9eee422c190c373e63ddd885
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/redis/img/redis-stack-220x234.png
keywords:
  - redis
  - keyvalue
  - database
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: redis
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/redis
urls:
  - redis-19.0.1.tgz
version: 19.0.1
```
