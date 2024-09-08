---
layout: page
title: charts/details/sonarqube-4.1.1
permalink: /charts/details/sonarqube-4.1.1/
---
<p align="center">
    <img src="https://bitnami.com/assets/stacks/sonarqube/img/sonarqube-stack-220x234.png" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] sonarqube fredric18/sonarqube
# uninstall
helm uninstall -n [ namespace ] sonarqube
# untar
helm pull fredric18/sonarqube --untar --version=4.1.1
```
---
### Chart Information
#### description
>SonarQube(TM) is an open source quality management platform that analyzes and measures code's technical quality. It enables developers to detect code issues, vulnerabilities, and bugs in early stages.
   
#### images
```shell
docker pull 
docker pull 
docker pull 
```
   
#### dependencies
>Name | Version | Repository
>---|---|---
>postgresql | 13.x.x | oci://registry-1.docker.io/bitnamicharts
>common | 2.x.x | oci://registry-1.docker.io/bitnamicharts
   
#### Chart.yaml
```yaml
annotations:
  category: DeveloperTools
  images: |
    - name: jmx-exporter
      image: docker.io/bitnami/jmx-exporter:0.20.0-debian-11-r0
    - name: os-shell
      image: docker.io/bitnami/os-shell:11-debian-11-r90
    - name: sonarqube
      image: docker.io/bitnami/sonarqube:10.2.1-debian-11-r10
  licenses: Apache-2.0
apiVersion: v2
appVersion: 10.2.1
created: "2024-09-08T04:39:03.979507682Z"
dependencies:
  - condition: postgresql.enabled
    name: postgresql
    repository: oci://registry-1.docker.io/bitnamicharts
    version: 13.x.x
  - name: common
    repository: oci://registry-1.docker.io/bitnamicharts
    tags:
      - bitnami-common
    version: 2.x.x
description: SonarQube(TM) is an open source quality management platform that analyzes and measures code's technical quality. It enables developers to detect code issues, vulnerabilities, and bugs in early stages.
digest: 61537cdb9db1681eabecf3445ffade8582dec486e8b645ed98db2dd2d791fe82
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/sonarqube/img/sonarqube-stack-220x234.png
keywords:
  - sonarqube
  - code-quality
  - code-review
  - static-analysis
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: sonarqube
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/sonarqube
urls:
  - sonarqube-4.1.1.tgz
version: 4.1.1
```
