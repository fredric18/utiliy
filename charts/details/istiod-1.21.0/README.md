---
layout: page
title: charts/details/istiod-1.21.0
permalink: /charts/details/istiod-1.21.0/
---
<p align="center">
    <img src="https://istio.io/latest/favicons/android-192x192.png" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] istiod fredric18/istiod
# uninstall
helm uninstall -n [ namespace ] istiod
# untar
helm pull fredric18/istiod --untar --version=1.21.0
```
---
### Chart Information
#### description
>Helm chart for istio control plane
   
#### Chart.yaml
```yaml
apiVersion: v1
appVersion: 1.21.0
created: "2024-09-08T05:08:58.372759715Z"
description: Helm chart for istio control plane
digest: c966c163b47e660a703ba1845d00da6688a14150529bf41963f27599ca913ffd
icon: https://istio.io/latest/favicons/android-192x192.png
keywords:
  - istio
  - istiod
  - istio-discovery
name: istiod
sources:
  - https://github.com/istio/istio
urls:
  - istiod-1.21.0.tgz
version: 1.21.0
```
