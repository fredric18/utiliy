---
layout: page
title: charts/details/nexus-repository-manager-64.2.0
permalink: /charts/details/nexus-repository-manager-64.2.0/
---
<p align="center">
    <img src="https://sonatype.github.io/helm3-charts/NexusRepo_Vertical.svg" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] nexus-repository-manager fredric18/nexus-repository-manager
# uninstall
helm uninstall -n [ namespace ] nexus-repository-manager
# untar
helm pull fredric18/nexus-repository-manager --untar --version=64.2.0
```
---
### Chart Information
#### description
>DEPRECATED Sonatype Nexus Repository Manager - Universal Binary repository
   
#### Chart.yaml
```yaml
apiVersion: v2
appVersion: 3.64.0
created: "2024-09-08T05:08:58.446348878Z"
deprecated: true
description: DEPRECATED Sonatype Nexus Repository Manager - Universal Binary repository
digest: 7f8e43e9f868db71248fa10f4713e4c7ea0aa8c9edba93f1445710cb8b877ff5
home: https://www.sonatype.com/nexus-repository-oss
icon: https://sonatype.github.io/helm3-charts/NexusRepo_Vertical.svg
keywords:
  - artifacts
  - dependency
  - management
  - sonatype
  - nexus
  - repository
  - quickstart
  - ci
  - repository-manager
  - nexus3
name: nexus-repository-manager
sources:
  - https://github.com/sonatype/nexus-public
type: application
urls:
  - nexus-repository-manager-64.2.0.tgz
version: 64.2.0
```
