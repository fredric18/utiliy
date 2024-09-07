---
layout: page
title: charts/details/keycloak-17.3.1
permalink: /charts/details/keycloak-17.3.1/
---
<p align="center">
    <img src="https://bitnami.com/assets/stacks/keycloak/img/keycloak-stack-220x234.png" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] keycloak fredric18/keycloak
# uninstall
helm uninstall -n [ namespace ] keycloak
# untar
helm pull fredric18/keycloak --untar --version=17.3.1
```
---
### Chart Information
#### description
>Keycloak is a high performance Java-based identity and access management solution. It lets developers add an authentication layer to their applications with minimum effort.
   
#### images
```shell
docker pull docker.io/bitnami/keycloak-config-cli:5.9.0-debian-11-r0
docker pull docker.io/bitnami/keycloak:22.0.5-debian-11-r0
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
    - name: keycloak-config-cli
      image: docker.io/bitnami/keycloak-config-cli:5.9.0-debian-11-r0
    - name: keycloak
      image: docker.io/bitnami/keycloak:22.0.5-debian-11-r0
  licenses: Apache-2.0
apiVersion: v2
appVersion: 22.0.5
created: "2024-09-06T03:45:34.706134525Z"
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
description: Keycloak is a high performance Java-based identity and access management solution. It lets developers add an authentication layer to their applications with minimum effort.
digest: ab05a6fe82c46a21ae10c0d2cbb5f2b89abdabf339aebe8b10311b79070ab64c
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/keycloak/img/keycloak-stack-220x234.png
keywords:
  - keycloak
  - access-management
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: keycloak
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/keycloak
urls:
  - keycloak-17.3.1.tgz
version: 17.3.1
```
