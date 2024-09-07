---
layout: page
title: charts/details/jenkins:12.4.2
permalink: /charts/details/jenkins:12.4.2/
---
<p align="center">
    <img src="https://bitnami.com/assets/stacks/jenkins/img/jenkins-stack-220x234.png" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] jenkins fredric18/jenkins
# uninstall
helm uninstall -n [ namespace ] jenkins
# untar
helm pull fredric18/jenkins --untar --version=12.4.2
```
---
### Chart Information
#### description
>Jenkins is an open source Continuous Integration and Continuous Delivery (CI/CD) server designed to automate the building, testing, and deploying of any software project.
   
#### images
```shell
docker pull docker.io/bitnami/jenkins-agent:0.3192.0-debian-11-r0
docker pull docker.io/bitnami/jenkins:2.414.3-debian-11-r1
docker pull docker.io/bitnami/os-shell:11-debian-11-r90
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
    - name: jenkins-agent
      image: docker.io/bitnami/jenkins-agent:0.3192.0-debian-11-r0
    - name: jenkins
      image: docker.io/bitnami/jenkins:2.414.3-debian-11-r1
    - name: os-shell
      image: docker.io/bitnami/os-shell:11-debian-11-r90
  licenses: Apache-2.0
apiVersion: v2
appVersion: 2.414.3
created: "2024-09-06T03:45:34.69281219Z"
dependencies:
  - name: common
    repository: oci://registry-1.docker.io/bitnamicharts
    tags:
      - bitnami-common
    version: 2.x.x
description: Jenkins is an open source Continuous Integration and Continuous Delivery (CI/CD) server designed to automate the building, testing, and deploying of any software project.
digest: 151cf27c25dfc5d11b939759d7c93341b95de43ba7e20a024a047d581308ed5e
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/jenkins/img/jenkins-stack-220x234.png
keywords:
  - jenkins
  - ci
  - cd
  - http
  - web
  - application
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: jenkins
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/jenkins
urls:
  - jenkins-12.4.2.tgz
version: 12.4.2
```
