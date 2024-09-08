---
layout: page
title: charts/details/chartmuseum-3.10.2
permalink: /charts/details/chartmuseum-3.10.2/
---
<p align="center">
    <img src="https://raw.githubusercontent.com/chartmuseum/charts/main/logo.jpg" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] chartmuseum fredric18/chartmuseum
# uninstall
helm uninstall -n [ namespace ] chartmuseum
# untar
helm pull fredric18/chartmuseum --untar --version=3.10.2
```
---
### Chart Information
#### description
>Host your own Helm Chart Repository
   
#### Chart.yaml
```yaml
apiVersion: v2
appVersion: 0.16.1
created: "2024-09-08T05:08:58.322991304Z"
description: Host your own Helm Chart Repository
digest: 972413e13343c5c193d1292fd92741550e8786eafef70091bd26c0310906aef3
home: https://github.com/helm/chartmuseum
icon: https://raw.githubusercontent.com/chartmuseum/charts/main/logo.jpg
keywords:
  - chartmuseum
  - helm
  - charts repo
maintainers:
  - name: chartmuseum
    url: https://github.com/chartmuseum
name: chartmuseum
sources:
  - https://github.com/chartmuseum/charts/tree/main/src/chartmuseum
  - https://github.com/chartmuseum
  - https://github.com/helm/chartmuseum
urls:
  - chartmuseum-3.10.2.tgz
version: 3.10.2
```
