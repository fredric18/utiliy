---
layout: page
title: charts/details/docker-mailserver-3.0.10
permalink: /charts/details/docker-mailserver-3.0.10/
---
<p align="center">
    <img src="https://avatars.githubusercontent.com/u/76868633?s=400&v=4" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] docker-mailserver fredric18/docker-mailserver
# uninstall
helm uninstall -n [ namespace ] docker-mailserver
# untar
helm pull fredric18/docker-mailserver --untar --version=3.0.10
```
---
### Chart Information
#### description
>A fullstack but simple mailserver (smtp, imap, antispam, antivirus, ssl...) using Docker.
   
#### Chart.yaml
```yaml
annotations:
  artifacthub.io/changes: |
    - Breaking : Standardized app labels to app.kubernetes.io/name for Istio workload/Cilium compatibility
apiVersion: v2
appVersion: 13.3.1
created: "2024-09-08T04:39:03.838643983Z"
description: A fullstack but simple mailserver (smtp, imap, antispam, antivirus, ssl...) using Docker.
digest: 9ee8d8be62f2c565e581e6a1f8162447d17eff5fa6abc8993f8e3a5bb7398167
home: https://github.com/funkypenguin/helm-docker-mailserver
icon: https://avatars.githubusercontent.com/u/76868633?s=400&v=4
keywords:
  - mailserver
  - postfix
  - dovecot
  - amavis
  - imap
maintainers:
  - email: davidy@funkypenguin.co.nz
    name: funkypenguin
name: docker-mailserver
sources:
  - https://github.com/docker-mailserver/docker-mailserver-helm
urls:
  - docker-mailserver-3.0.10.tgz
version: 3.0.10
```
