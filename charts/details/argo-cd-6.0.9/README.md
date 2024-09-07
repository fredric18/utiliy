---
layout: page
title: charts/details/argo-cd-6.0.9
permalink: /charts/details/argo-cd-6.0.9/
---
<p align="center">
    <img src="https://bitnami.com/assets/stacks/argo-cd/img/argo-cd-stack-220x234.png" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] argo-cd fredric18/argo-cd
# uninstall
helm uninstall -n [ namespace ] argo-cd
# untar
helm pull fredric18/argo-cd --untar --version=6.0.9
```
---
### Chart Information
#### description
>Argo CD is a continuous delivery tool for Kubernetes based on GitOps.
   
#### images
```shell
docker pull docker.io/bitnami/argo-cd:2.10.6-debian-12-r2
docker pull docker.io/bitnami/dex:2.39.1-debian-12-r0
docker pull docker.io/bitnami/os-shell:12-debian-12-r18
docker pull docker.io/bitnami/redis:7.2.4-debian-12-r11
```
   
#### dependencies
>Name | Version | Repository
>---|---|---
>redis | 19.x.x | oci://registry-1.docker.io/bitnamicharts
>common | 2.x.x | oci://registry-1.docker.io/bitnamicharts
   
#### Chart.yaml
```yaml
annotations:
  category: Infrastructure
  images: |
    - name: argo-cd
      image: docker.io/bitnami/argo-cd:2.10.6-debian-12-r2
    - name: dex
      image: docker.io/bitnami/dex:2.39.1-debian-12-r0
    - name: os-shell
      image: docker.io/bitnami/os-shell:12-debian-12-r18
    - name: redis
      image: docker.io/bitnami/redis:7.2.4-debian-12-r11
  licenses: Apache-2.0
apiVersion: v2
appVersion: 2.10.6
created: "2024-09-06T03:45:34.646689778Z"
dependencies:
  - condition: redis.enabled
    name: redis
    repository: oci://registry-1.docker.io/bitnamicharts
    version: 19.x.x
  - name: common
    repository: oci://registry-1.docker.io/bitnamicharts
    tags:
      - bitnami-common
    version: 2.x.x
description: Argo CD is a continuous delivery tool for Kubernetes based on GitOps.
digest: ddc0051cacd6266b11b7a5dcfe28edf383bb66ba1c805b98c06cc1ebc56b93da
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/argo-cd/img/argo-cd-stack-220x234.png
keywords:
  - Continuous delivery
  - Continuous deployment
  - Devops
  - Kubernetes
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: argo-cd
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/argo-cd
urls:
  - argo-cd-6.0.9.tgz
version: 6.0.9
```
