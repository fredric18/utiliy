---
layout: page
title: charts/details/cassandra-10.12.1
permalink: /charts/details/cassandra-10.12.1/
---
<p align="center">
    <img src="https://bitnami.com/assets/stacks/cassandra/img/cassandra-stack-220x234.png" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] cassandra fredric18/cassandra
# uninstall
helm uninstall -n [ namespace ] cassandra
# untar
helm pull fredric18/cassandra --untar --version=10.12.1
```
---
### Chart Information
#### description
>Apache Cassandra is an open source distributed database management system designed to handle large amounts of data across many servers, providing high availability with no single point of failure.
   
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
    - name: cassandra
      image: docker.io/bitnami/cassandra:4.1.4-debian-12-r4
    - name: cassandra-exporter
      image: docker.io/bitnami/cassandra-exporter:2.3.8-debian-12-r17
    - name: os-shell
      image: docker.io/bitnami/os-shell:12-debian-12-r16
  licenses: Apache-2.0
apiVersion: v2
appVersion: 4.1.4
created: "2024-09-08T04:56:29.400929451Z"
dependencies:
  - name: common
    repository: oci://registry-1.docker.io/bitnamicharts
    tags:
      - bitnami-common
    version: 2.x.x
description: Apache Cassandra is an open source distributed database management system designed to handle large amounts of data across many servers, providing high availability with no single point of failure.
digest: b21b272eaf794ee8a2fc361dc0cdf498fb6e1e7db88b7b09f15148e52e76477e
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/cassandra/img/cassandra-stack-220x234.png
keywords:
  - cassandra
  - database
  - nosql
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: cassandra
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/cassandra
urls:
  - cassandra-10.12.1.tgz
version: 10.12.1
```
