---
layout: page
title: charts/details/jaeger-operator-2.53.0
permalink: /charts/details/jaeger-operator-2.53.0/
---
<p align="center">
    <img src="https://www.jaegertracing.io/img/jaeger-icon-reverse-color.svg" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] jaeger-operator fredric18/jaeger-operator
# uninstall
helm uninstall -n [ namespace ] jaeger-operator
# untar
helm pull fredric18/jaeger-operator --untar --version=2.53.0
```
---
### Chart Information
#### description
>jaeger-operator Helm chart for Kubernetes
   
#### Chart.yaml
```yaml
apiVersion: v1
appVersion: 1.52.0
created: "2024-09-08T05:08:58.374485537Z"
description: jaeger-operator Helm chart for Kubernetes
digest: adda266f31a25bae0727b6e0962c13702652de9449d9f387ef090ae2525a2bcc
home: https://www.jaegertracing.io/
icon: https://www.jaegertracing.io/img/jaeger-icon-reverse-color.svg
maintainers:
  - email: ctadeu@gmail.com
    name: cpanato
  - email: batazor111@gmail.com
    name: batazor
name: jaeger-operator
sources:
  - https://github.com/jaegertracing/jaeger-operator
urls:
  - jaeger-operator-2.53.0.tgz
version: 2.53.0
```
