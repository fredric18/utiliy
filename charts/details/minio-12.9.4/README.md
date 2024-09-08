---
layout: page
title: charts/details/minio-12.9.4
permalink: /charts/details/minio-12.9.4/
---
<p align="center">
    <img src="https://bitnami.com/assets/stacks/minio/img/minio-stack-220x234.png" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] minio fredric18/minio
# uninstall
helm uninstall -n [ namespace ] minio
# untar
helm pull fredric18/minio --untar --version=12.9.4
```
---
### Chart Information
#### description
>MinIO(R) is an object storage server, compatible with Amazon S3 cloud storage service, mainly used for storing unstructured data (such as photos, videos, log files, etc.).
   
#### images
```shell
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
  category: Infrastructure
  images: |
    - name: minio-client
      image: docker.io/bitnami/minio-client:2023.11.6-debian-11-r1
    - name: minio
      image: docker.io/bitnami/minio:2023.11.11-debian-11-r0
    - name: os-shell
      image: docker.io/bitnami/os-shell:11-debian-11-r91
  licenses: Apache-2.0
apiVersion: v2
appVersion: 2023.11.11
created: "2024-09-08T04:39:03.945986567Z"
dependencies:
  - name: common
    repository: oci://registry-1.docker.io/bitnamicharts
    tags:
      - bitnami-common
    version: 2.x.x
description: MinIO(R) is an object storage server, compatible with Amazon S3 cloud storage service, mainly used for storing unstructured data (such as photos, videos, log files, etc.).
digest: 416d092f6fb54b8e133ddc4760e2d929340e83010d788628c41e1cec3c0bc8cf
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/minio/img/minio-stack-220x234.png
keywords:
  - minio
  - storage
  - object-storage
  - s3
  - cluster
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: minio
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/minio
urls:
  - minio-12.9.4.tgz
version: 12.9.4
```
