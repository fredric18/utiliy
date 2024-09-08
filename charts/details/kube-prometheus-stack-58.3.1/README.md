---
layout: page
title: charts/details/kube-prometheus-stack-58.3.1
permalink: /charts/details/kube-prometheus-stack-58.3.1/
---
<p align="center">
    <img src="https://raw.githubusercontent.com/prometheus/prometheus.github.io/master/assets/prometheus_logo-cb55bb5c346.png" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] kube-prometheus-stack fredric18/kube-prometheus-stack
# uninstall
helm uninstall -n [ namespace ] kube-prometheus-stack
# untar
helm pull fredric18/kube-prometheus-stack --untar --version=58.3.1
```
---
### Chart Information
#### description
>kube-prometheus-stack collects Kubernetes manifests, Grafana dashboards, and Prometheus rules combined with documentation and scripts to provide easy to operate end-to-end Kubernetes cluster monitoring with Prometheus using the Prometheus Operator.
   
#### dependencies
>Name | Version | Repository
>---|---|---
>crds | 0.0.0 | 
>kube-state-metrics | 5.19.* | https://prometheus-community.github.io/helm-charts
>prometheus-node-exporter | 4.33.* | https://prometheus-community.github.io/helm-charts
>grafana | 7.3.* | https://grafana.github.io/helm-charts
>prometheus-windows-exporter | 0.3.* | https://prometheus-community.github.io/helm-charts
   
#### Chart.yaml
```yaml
annotations:
  artifacthub.io/license: Apache-2.0
  artifacthub.io/links: |
    - name: Chart Source
      url: https://github.com/prometheus-community/helm-charts
    - name: Upstream Project
      url: https://github.com/prometheus-operator/kube-prometheus
  artifacthub.io/operator: "true"
apiVersion: v2
appVersion: v0.73.2
created: "2024-09-08T04:56:29.51218328Z"
dependencies:
  - condition: crds.enabled
    name: crds
    repository: ""
    version: 0.0.0
  - condition: kubeStateMetrics.enabled
    name: kube-state-metrics
    repository: https://prometheus-community.github.io/helm-charts
    version: 5.19.*
  - condition: nodeExporter.enabled
    name: prometheus-node-exporter
    repository: https://prometheus-community.github.io/helm-charts
    version: 4.33.*
  - condition: grafana.enabled
    name: grafana
    repository: https://grafana.github.io/helm-charts
    version: 7.3.*
  - condition: windowsMonitoring.enabled
    name: prometheus-windows-exporter
    repository: https://prometheus-community.github.io/helm-charts
    version: 0.3.*
description: kube-prometheus-stack collects Kubernetes manifests, Grafana dashboards, and Prometheus rules combined with documentation and scripts to provide easy to operate end-to-end Kubernetes cluster monitoring with Prometheus using the Prometheus Operator.
digest: ce08dd64dc8c23c7de6b151f45c544b981a60782cfd7564d72ab7bb62c3c2f2f
home: https://github.com/prometheus-operator/kube-prometheus
icon: https://raw.githubusercontent.com/prometheus/prometheus.github.io/master/assets/prometheus_logo-cb55bb5c346.png
keywords:
  - operator
  - prometheus
  - kube-prometheus
kubeVersion: '>=1.19.0-0'
maintainers:
  - email: andrew@quadcorps.co.uk
    name: andrewgkew
  - email: gianrubio@gmail.com
    name: gianrubio
  - email: github.gkarthiks@gmail.com
    name: gkarthiks
  - email: kube-prometheus-stack@sisti.pt
    name: GMartinez-Sisti
  - email: github@jkroepke.de
    name: jkroepke
  - email: scott@r6by.com
    name: scottrigby
  - email: miroslav.hadzhiev@gmail.com
    name: Xtigyro
  - email: quentin.bisson@gmail.com
    name: QuentinBisson
name: kube-prometheus-stack
sources:
  - https://github.com/prometheus-community/helm-charts
  - https://github.com/prometheus-operator/kube-prometheus
type: application
urls:
  - kube-prometheus-stack-58.3.1.tgz
version: 58.3.1
```
