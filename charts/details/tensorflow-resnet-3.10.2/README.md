---
layout: page
title: charts/details/tensorflow-resnet-3.10.2
permalink: /charts/details/tensorflow-resnet-3.10.2/
---
<p align="center">
    <img src="https://bitnami.com/assets/stacks/tensorflow-inception/img/tensorflow-inception-stack-220x234.png" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] tensorflow-resnet fredric18/tensorflow-resnet
# uninstall
helm uninstall -n [ namespace ] tensorflow-resnet
# untar
helm pull fredric18/tensorflow-resnet --untar --version=3.10.2
```
---
### Chart Information
#### description
>TensorFlow ResNet is a client utility for use with TensorFlow Serving and ResNet models.
   
#### images
```shell
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
  category: MachineLearning
  images: |
    - name: tensorflow-resnet
      image: docker.io/bitnami/tensorflow-resnet:2.14.0-debian-11-r0
    - name: tensorflow-serving
      image: docker.io/bitnami/tensorflow-serving:2.14.0-debian-11-r0
  licenses: Apache-2.0
apiVersion: v2
appVersion: 2.14.0
created: "2024-09-08T04:53:57.491969071Z"
dependencies:
  - name: common
    repository: oci://registry-1.docker.io/bitnamicharts
    tags:
      - bitnami-common
    version: 2.x.x
description: TensorFlow ResNet is a client utility for use with TensorFlow Serving and ResNet models.
digest: 3f35ce9e32707a4c4c10e894cfa86527a940857fffb4755279ef97370a0ce19f
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/tensorflow-inception/img/tensorflow-inception-stack-220x234.png
keywords:
  - tensorflow
  - serving
  - resnet
  - machine
  - learning
  - library
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: tensorflow-resnet
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/tensorflow-resnet
urls:
  - tensorflow-resnet-3.10.2.tgz
version: 3.10.2
```
