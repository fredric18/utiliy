---
layout: page
title: charts/details/mariadb-16.5.0
permalink: /charts/details/mariadb-16.5.0/
---
<p align="center">
    <img src="https://bitnami.com/assets/stacks/mariadb/img/mariadb-stack-220x234.png" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] mariadb fredric18/mariadb
# uninstall
helm uninstall -n [ namespace ] mariadb
# untar
helm pull fredric18/mariadb --untar --version=16.5.0
```
---
### Chart Information
#### description
>MariaDB is an open source, community-developed SQL database server that is widely in use around the world due to its enterprise features, flexibility, and collaboration with leading tech firms.
   
#### images
```shell
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
    - name: mariadb
      image: docker.io/bitnami/mariadb:11.2.3-debian-12-r4
    - name: mysqld-exporter
      image: docker.io/bitnami/mysqld-exporter:0.15.1-debian-12-r8
    - name: os-shell
      image: docker.io/bitnami/os-shell:12-debian-12-r16
  licenses: Apache-2.0
apiVersion: v2
appVersion: 11.2.3
created: "2024-09-08T04:56:29.515858236Z"
dependencies:
  - name: common
    repository: oci://registry-1.docker.io/bitnamicharts
    tags:
      - bitnami-common
    version: 2.x.x
description: MariaDB is an open source, community-developed SQL database server that is widely in use around the world due to its enterprise features, flexibility, and collaboration with leading tech firms.
digest: 7034831663964829d77722694029a6074e8d4e5307cc8fc65a2f6afc4766175c
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/mariadb/img/mariadb-stack-220x234.png
keywords:
  - mariadb
  - mysql
  - database
  - sql
  - prometheus
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: mariadb
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/mariadb
urls:
  - mariadb-16.5.0.tgz
version: 16.5.0
```
