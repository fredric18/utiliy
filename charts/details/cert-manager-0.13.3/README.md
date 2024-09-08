---
layout: page
title: charts/details/cert-manager-0.13.3
permalink: /charts/details/cert-manager-0.13.3/
---
<p align="center">
    <img src="https://bitnami.com/assets/stacks/cert-manager/img/cert-manager-stack-220x234.png" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] cert-manager fredric18/cert-manager
# uninstall
helm uninstall -n [ namespace ] cert-manager
# untar
helm pull fredric18/cert-manager --untar --version=0.13.3
```
---
### Chart Information
#### description
>cert-manager is a Kubernetes add-on to automate the management and issuance of TLS certificates from various issuing sources.
   
#### images
```shell
docker pull 
docker pull 
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
  category: CertificateAuthority
  images: |
    - name: acmesolver
      image: docker.io/bitnami/acmesolver:1.13.2-debian-11-r1
    - name: cainjector
      image: docker.io/bitnami/cainjector:1.13.2-debian-11-r1
    - name: cert-manager-webhook
      image: docker.io/bitnami/cert-manager-webhook:1.13.2-debian-11-r1
    - name: cert-manager
      image: docker.io/bitnami/cert-manager:1.13.2-debian-11-r1
  licenses: Apache-2.0
apiVersion: v2
appVersion: 1.13.2
created: "2024-09-08T04:39:03.835362719Z"
dependencies:
  - name: common
    repository: oci://registry-1.docker.io/bitnamicharts
    tags:
      - bitnami-common
    version: 2.x.x
description: cert-manager is a Kubernetes add-on to automate the management and issuance of TLS certificates from various issuing sources.
digest: 000b3e904e47b924732a46fad576c17a0e82997baa89e2275584e64b8768e49b
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/cert-manager/img/cert-manager-stack-220x234.png
keywords:
  - go
  - security
  - tls
  - certificate
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: cert-manager
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/cert-manager
urls:
  - cert-manager-0.13.3.tgz
version: 0.13.3
```
