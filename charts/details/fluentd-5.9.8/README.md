---
layout: page
title: charts/details/fluentd-5.9.8
permalink: /charts/details/fluentd-5.9.8/
---
<p align="center">
    <img src="https://bitnami.com/assets/stacks/fluentd/img/fluentd-stack-220x234.png" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] fluentd fredric18/fluentd
# uninstall
helm uninstall -n [ namespace ] fluentd
# untar
helm pull fredric18/fluentd --untar --version=5.9.8
```
---
### Chart Information
#### description
>Fluentd collects events from various data sources and writes them to files, RDBMS, NoSQL, IaaS, SaaS, Hadoop and so on.
   
#### images
```shell
docker pull 
```
   
#### dependencies
>Name | Version | Repository
>---|---|---
>common | 2.x.x | oci://registry-1.docker.io/bitnamicharts
   
#### Chart.yaml
```yaml
annotations:
  category: Analytics
  images: |
    - name: fluentd
      image: docker.io/bitnami/fluentd:1.16.2-debian-11-r80
  licenses: Apache-2.0
apiVersion: v2
appVersion: 1.16.2
created: "2024-09-08T04:53:57.345399814Z"
dependencies:
  - name: common
    repository: oci://registry-1.docker.io/bitnamicharts
    tags:
      - bitnami-common
    version: 2.x.x
description: Fluentd collects events from various data sources and writes them to files, RDBMS, NoSQL, IaaS, SaaS, Hadoop and so on.
digest: 44e7f0142f47553c39b76291589f135eebf5bc54394683f50dae044346b113a2
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/fluentd/img/fluentd-stack-220x234.png
keywords:
  - fluentd
  - logging
  - logs
  - data
  - collector
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: fluentd
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/fluentd
urls:
  - fluentd-5.9.8.tgz
version: 5.9.8
```
