---
layout: page
title: charts/details/kibana-10.6.1
permalink: /charts/details/kibana-10.6.1/
---
<p align="center">
    <img src="https://bitnami.com/assets/stacks/kibana/img/kibana-stack-220x234.png" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] kibana fredric18/kibana
# uninstall
helm uninstall -n [ namespace ] kibana
# untar
helm pull fredric18/kibana --untar --version=10.6.1
```
---
### Chart Information
#### description
>Kibana is an open source, browser based analytics and search dashboard for Elasticsearch. Kibana strives to be easy to get started with, while also being flexible and powerful.
   
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
  category: Analytics
  images: |
    - name: kibana
      image: docker.io/bitnami/kibana:8.10.4-debian-11-r0
    - name: os-shell
      image: docker.io/bitnami/os-shell:11-debian-11-r90
  licenses: Apache-2.0
apiVersion: v2
appVersion: 8.10.4
created: "2024-09-06T03:45:34.708793369Z"
dependencies:
  - name: common
    repository: oci://registry-1.docker.io/bitnamicharts
    tags:
      - bitnami-common
    version: 2.x.x
description: Kibana is an open source, browser based analytics and search dashboard for Elasticsearch. Kibana strives to be easy to get started with, while also being flexible and powerful.
digest: 20135e9b6dce09fed3938c9b02962ebe4010956ed130238aad318bd9d308b0f4
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/kibana/img/kibana-stack-220x234.png
keywords:
  - kibana
  - analytics
  - monitoring
  - metrics
  - logs
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: kibana
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/kibana
urls:
  - kibana-10.6.1.tgz
version: 10.6.1
```
