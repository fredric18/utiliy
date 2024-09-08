---
layout: page
title: charts/details/kafka-26.4.0
permalink: /charts/details/kafka-26.4.0/
---
<p align="center">
    <img src="https://bitnami.com/assets/stacks/kafka/img/kafka-stack-220x234.png" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] kafka fredric18/kafka
# uninstall
helm uninstall -n [ namespace ] kafka
# untar
helm pull fredric18/kafka --untar --version=26.4.0
```
---
### Chart Information
#### description
>Apache Kafka is a distributed streaming platform designed to build real-time pipelines and can be used as a message broker or as a replacement for a log aggregation solution for big data applications.
   
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
>zookeeper | 12.x.x | oci://registry-1.docker.io/bitnamicharts
>common | 2.x.x | oci://registry-1.docker.io/bitnamicharts
   
#### Chart.yaml
```yaml
annotations:
  category: Infrastructure
  images: |
    - name: jmx-exporter
      image: docker.io/bitnami/jmx-exporter:0.20.0-debian-11-r0
    - name: kafka-exporter
      image: docker.io/bitnami/kafka-exporter:1.7.0-debian-11-r132
    - name: kafka
      image: docker.io/bitnami/kafka:3.6.0-debian-11-r1
    - name: kubectl
      image: docker.io/bitnami/kubectl:1.28.3-debian-11-r0
    - name: os-shell
      image: docker.io/bitnami/os-shell:11-debian-11-r90
  licenses: Apache-2.0
apiVersion: v2
appVersion: 3.6.0
created: "2024-09-08T05:08:58.38458132Z"
dependencies:
  - condition: zookeeper.enabled
    name: zookeeper
    repository: oci://registry-1.docker.io/bitnamicharts
    version: 12.x.x
  - name: common
    repository: oci://registry-1.docker.io/bitnamicharts
    tags:
      - bitnami-common
    version: 2.x.x
description: Apache Kafka is a distributed streaming platform designed to build real-time pipelines and can be used as a message broker or as a replacement for a log aggregation solution for big data applications.
digest: c5bbd724c582053fa1ea4e4c9520efbf9f0b669770b2360824cff10fc381d183
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/kafka/img/kafka-stack-220x234.png
keywords:
  - kafka
  - zookeeper
  - streaming
  - producer
  - consumer
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: kafka
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/kafka
urls:
  - kafka-26.4.0.tgz
version: 26.4.0
```
