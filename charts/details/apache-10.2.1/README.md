---
layout: page
title: charts/details/apache-10.2.1
permalink: /charts/details/apache-10.2.1/
---
<p align="center">
    <img src="https://bitnami.com/assets/stacks/apache/img/apache-stack-220x234.png" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] apache fredric18/apache
# uninstall
helm uninstall -n [ namespace ] apache
# untar
helm pull fredric18/apache --untar --version=10.2.1
```
---
### Chart Information
#### description
>Apache HTTP Server is an open-source HTTP server. The goal of this project is to provide a secure, efficient and extensible server that provides HTTP services in sync with the current HTTP standards.
   
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
  category: Infrastructure
  images: |
    - name: apache-exporter
      image: docker.io/bitnami/apache-exporter:1.0.3-debian-11-r0
    - name: apache
      image: docker.io/bitnami/apache:2.4.58-debian-11-r0
    - name: git
      image: docker.io/bitnami/git:2.42.1-debian-11-r0
  licenses: Apache-2.0
apiVersion: v2
appVersion: 2.4.58
created: "2024-09-06T03:45:34.633284923Z"
dependencies:
  - name: common
    repository: oci://registry-1.docker.io/bitnamicharts
    tags:
      - bitnami-common
    version: 2.x.x
description: Apache HTTP Server is an open-source HTTP server. The goal of this project is to provide a secure, efficient and extensible server that provides HTTP services in sync with the current HTTP standards.
digest: 805fbba99f770bfe03662c106663302dea8a8f4b861986a42aee9c244d53c760
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/apache/img/apache-stack-220x234.png
keywords:
  - apache
  - http
  - https
  - www
  - web
  - reverse proxy
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: apache
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/apache
urls:
  - apache-10.2.1.tgz
version: 10.2.1
```
