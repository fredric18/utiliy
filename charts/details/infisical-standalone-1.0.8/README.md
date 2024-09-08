---
layout: page
title: charts/details/infisical-standalone-1.0.8
permalink: /charts/details/infisical-standalone-1.0.8/
---
<p align="center">
    <img src="null" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] infisical-standalone fredric18/infisical-standalone
# uninstall
helm uninstall -n [ namespace ] infisical-standalone
# untar
helm pull fredric18/infisical-standalone --untar --version=1.0.8
```
---
### Chart Information
#### description
>A helm chart for a full Infisical application
   
#### dependencies
>Name | Version | Repository
>---|---|---
>ingress-nginx | 4.0.13 | https://kubernetes.github.io/ingress-nginx
>postgresql | 14.1.3 | https://charts.bitnami.com/bitnami
>redis | 18.14.0 | https://charts.bitnami.com/bitnami
   
#### Chart.yaml
```yaml
apiVersion: v2
appVersion: 1.0.1
created: "2024-09-08T05:08:58.37128057Z"
dependencies:
  - condition: ingress.nginx.enabled
    name: ingress-nginx
    repository: https://kubernetes.github.io/ingress-nginx
    version: 4.0.13
  - condition: postgresql.enabled
    name: postgresql
    repository: https://charts.bitnami.com/bitnami
    version: 14.1.3
  - condition: redis.enabled
    name: redis
    repository: https://charts.bitnami.com/bitnami
    version: 18.14.0
description: A helm chart for a full Infisical application
digest: f72e74b092f7b186ff370a53f45100114e8fcb0b7a27420f379a105c0fcc278c
name: infisical-standalone
type: application
urls:
  - infisical-standalone-1.0.8.tgz
version: 1.0.8
```
