---
layout: page
title: charts/details/gateway-1.21.0
permalink: /charts/details/gateway-1.21.0/
---
<p align="center">
    <img src="https://istio.io/latest/favicons/android-192x192.png" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] gateway fredric18/gateway
# uninstall
helm uninstall -n [ namespace ] gateway
# untar
helm pull fredric18/gateway --untar --version=1.21.0
```
---
### Chart Information
#### description
>Helm chart for deploying Istio gateways
   
#### Chart.yaml
```yaml
apiVersion: v2
appVersion: 1.21.0
created: "2024-09-08T05:08:58.327880105Z"
description: Helm chart for deploying Istio gateways
digest: ff7c7f59a790cc849a6d45a9db60ca41d09c5852ac63c88753ba32af486f3096
icon: https://istio.io/latest/favicons/android-192x192.png
keywords:
  - istio
  - gateways
name: gateway
sources:
  - https://github.com/istio/istio
type: application
urls:
  - gateway-1.21.0.tgz
version: 1.21.0
```
