---
layout: page
title: charts/details/base-1.21.0
permalink: /charts/details/base-1.21.0/
---
<p align="center">
    <img src="https://istio.io/latest/favicons/android-192x192.png" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] base fredric18/base
# uninstall
helm uninstall -n [ namespace ] base
# untar
helm pull fredric18/base --untar --version=1.21.0
```
---
### Chart Information
#### description
>Helm chart for deploying Istio cluster resources and CRDs
   
#### Chart.yaml
```yaml
apiVersion: v1
appVersion: 1.21.0
created: "2024-09-08T05:08:58.315900213Z"
description: Helm chart for deploying Istio cluster resources and CRDs
digest: 26f278acea5d1a3801dd588d85b9b4d5273334600e143620afb524e91d79458d
icon: https://istio.io/latest/favicons/android-192x192.png
keywords:
  - istio
name: base
sources:
  - https://github.com/istio/istio
urls:
  - base-1.21.0.tgz
version: 1.21.0
```
