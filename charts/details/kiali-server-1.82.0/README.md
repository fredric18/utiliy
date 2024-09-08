---
layout: page
title: charts/details/kiali-server-1.82.0
permalink: /charts/details/kiali-server-1.82.0/
---
<p align="center">
    <img src="https://raw.githubusercontent.com/kiali/kiali.io/current/assets/icons/logo.svg" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] kiali-server fredric18/kiali-server
# uninstall
helm uninstall -n [ namespace ] kiali-server
# untar
helm pull fredric18/kiali-server --untar --version=1.82.0
```
---
### Chart Information
#### description
>Kiali is an open source project for service mesh observability, refer to https://www.kiali.io for details.
   
#### Chart.yaml
```yaml
apiVersion: v2
appVersion: v1.82.0
created: "2024-09-08T05:08:58.399754698Z"
description: Kiali is an open source project for service mesh observability, refer to https://www.kiali.io for details.
digest: af2581b13390596626a64ab955a89f75a192b7e6dc7d9b5529ac87071160f7d8
home: https://github.com/kiali/kiali
icon: https://raw.githubusercontent.com/kiali/kiali.io/current/assets/icons/logo.svg
keywords:
  - istio
  - kiali
maintainers:
  - email: kiali-users@googlegroups.com
    name: Kiali
    url: https://kiali.io
name: kiali-server
sources:
  - https://github.com/kiali/kiali
  - https://github.com/kiali/kiali-operator
  - https://github.com/kiali/helm-charts
urls:
  - kiali-server-1.82.0.tgz
version: 1.82.0
```
