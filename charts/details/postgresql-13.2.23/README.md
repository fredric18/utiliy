---
layout: page
title: charts/details/postgresql-13.2.23
permalink: /charts/details/postgresql-13.2.23/
---
<p align="center">
    <img src="https://bitnami.com/assets/stacks/postgresql/img/postgresql-stack-220x234.png" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] postgresql fredric18/postgresql
# uninstall
helm uninstall -n [ namespace ] postgresql
# untar
helm pull fredric18/postgresql --untar --version=13.2.23
```
---
### Chart Information
#### description
>PostgreSQL (Postgres) is an open source object-relational database known for reliability and data integrity. ACID-compliant, it supports foreign keys, joins, views, triggers and stored procedures.
   
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
    - name: os-shell
      image: docker.io/bitnami/os-shell:11-debian-11-r91
    - name: postgres-exporter
      image: docker.io/bitnami/postgres-exporter:0.15.0-debian-11-r2
    - name: postgresql
      image: docker.io/bitnami/postgresql:16.1.0-debian-11-r15
  licenses: Apache-2.0
apiVersion: v2
appVersion: 16.1.0
created: "2024-09-08T04:39:03.968313062Z"
dependencies:
  - name: common
    repository: oci://registry-1.docker.io/bitnamicharts
    tags:
      - bitnami-common
    version: 2.x.x
description: PostgreSQL (Postgres) is an open source object-relational database known for reliability and data integrity. ACID-compliant, it supports foreign keys, joins, views, triggers and stored procedures.
digest: 6f92281c248236c33d676b08faa9a6ea995e0f890724d4eedc2ffe990d433b71
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/postgresql/img/postgresql-stack-220x234.png
keywords:
  - postgresql
  - postgres
  - database
  - sql
  - replication
  - cluster
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: postgresql
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/postgresql
urls:
  - postgresql-13.2.23.tgz
version: 13.2.23
```
