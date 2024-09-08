---
layout: page
title: charts/details/nginx-ingress-controller-10.7.0
permalink: /charts/details/nginx-ingress-controller-10.7.0/
---
<p align="center">
    <img src="https://bitnami.com/assets/stacks/nginx-ingress-controller/img/nginx-ingress-controller-stack-220x234.png" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] nginx-ingress-controller fredric18/nginx-ingress-controller
# uninstall
helm uninstall -n [ namespace ] nginx-ingress-controller
# untar
helm pull fredric18/nginx-ingress-controller --untar --version=10.7.0
```
---
### Chart Information
#### description
>NGINX Ingress Controller is an Ingress controller that manages external access to HTTP services in a Kubernetes cluster using NGINX.
   
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
  category: Infrastructure
  images: |
    - name: nginx
      image: docker.io/bitnami/nginx:1.25.4-debian-12-r2
    - name: nginx-ingress-controller
      image: docker.io/bitnami/nginx-ingress-controller:1.9.6-debian-12-r8
  licenses: Apache-2.0
apiVersion: v2
appVersion: 1.9.6
created: "2024-09-08T05:08:58.448939465Z"
dependencies:
  - name: common
    repository: oci://registry-1.docker.io/bitnamicharts
    tags:
      - bitnami-common
    version: 2.x.x
description: NGINX Ingress Controller is an Ingress controller that manages external access to HTTP services in a Kubernetes cluster using NGINX.
digest: 31d04a47afd019ca53b40656335eec8104e5961bf6028ec3095f5bc05d4ad3be
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/nginx-ingress-controller/img/nginx-ingress-controller-stack-220x234.png
keywords:
  - ingress
  - nginx
  - http
  - web
  - www
  - reverse proxy
kubeVersion: '>= 1.20.0-0'
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: nginx-ingress-controller
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/nginx-ingress-controller
urls:
  - nginx-ingress-controller-10.7.0.tgz
version: 10.7.0
```
