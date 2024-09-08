---
layout: page
title: charts/details/aws-mountpoint-s3-csi-driver-1.5.1
permalink: /charts/details/aws-mountpoint-s3-csi-driver-1.5.1/
---
<p align="center">
    <img src="null" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] aws-mountpoint-s3-csi-driver fredric18/aws-mountpoint-s3-csi-driver
# uninstall
helm uninstall -n [ namespace ] aws-mountpoint-s3-csi-driver
# untar
helm pull fredric18/aws-mountpoint-s3-csi-driver --untar --version=1.5.1
```
---
### Chart Information
#### description
>A Helm chart for installing the Mountpoint for Amazon S3 CSI Driver. This CSI driver allows your Kubernetes applications to access S3 objects through a file system interface.
   
#### Chart.yaml
```yaml
apiVersion: v2
created: "2024-09-08T05:08:58.314823635Z"
description: A Helm chart for installing the Mountpoint for Amazon S3 CSI Driver. This CSI driver allows your Kubernetes applications to access S3 objects through a file system interface.
digest: 7bd84a74b3ea5d5558435b797ce9f936b589f7bc37fa7804df33f7c56f196e5e
home: https://github.com/awslabs/mountpoint-s3-csi-driver
keywords:
  - aws
  - mountpoint
  - s3
  - csi
kubeVersion: '>=1.23.0-0'
maintainers:
  - name: AWS S3
    url: https://github.com/awslabs/mountpoint-s3-csi-driver
name: aws-mountpoint-s3-csi-driver
sources:
  - https://github.com/awslabs/mountpoint-s3-csi-driver
urls:
  - aws-mountpoint-s3-csi-driver-1.5.1.tgz
version: 1.5.1
```
