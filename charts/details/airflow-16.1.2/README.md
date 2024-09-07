---
layout: page
title: charts/details/airflow-16.1.2
permalink: /charts/details/airflow-16.1.2/
---
<p align="center">
    <img src="https://bitnami.com/assets/stacks/airflow/img/airflow-stack-220x234.png" width="300px" height="300px">
</p>
### Using Chart
```shell
# install
helm install -n [ namespace ] airflow fredric18/airflow
# uninstall
helm uninstall -n [ namespace ] airflow
# untar
helm pull fredric18/airflow --untar --version=16.1.2
```
---
### Chart Information
#### description
>Apache Airflow is a tool to express and execute workflows as directed acyclic graphs (DAGs). It includes utilities to schedule tasks, monitor task progress and handle task dependencies.
   
#### images
```shell
docker pull docker.io/bitnami/airflow-exporter:0.20220314.0-debian-11-r440
docker pull docker.io/bitnami/airflow-scheduler:2.7.3-debian-11-r0
docker pull docker.io/bitnami/airflow-worker:2.7.3-debian-11-r0
docker pull docker.io/bitnami/airflow:2.7.3-debian-11-r0
docker pull docker.io/bitnami/git:2.42.1-debian-11-r0
docker pull docker.io/bitnami/os-shell:11-debian-11-r90
```
   
#### dependencies
>Name | Version | Repository
>---|---|---
>redis | 18.x.x | oci://registry-1.docker.io/bitnamicharts
>postgresql | 13.x.x | oci://registry-1.docker.io/bitnamicharts
>common | 2.x.x | oci://registry-1.docker.io/bitnamicharts
   
#### Chart.yaml
```yaml
annotations:
  category: WorkFlow
  images: |
    - name: airflow-exporter
      image: docker.io/bitnami/airflow-exporter:0.20220314.0-debian-11-r440
    - name: airflow-scheduler
      image: docker.io/bitnami/airflow-scheduler:2.7.3-debian-11-r0
    - name: airflow-worker
      image: docker.io/bitnami/airflow-worker:2.7.3-debian-11-r0
    - name: airflow
      image: docker.io/bitnami/airflow:2.7.3-debian-11-r0
    - name: git
      image: docker.io/bitnami/git:2.42.1-debian-11-r0
    - name: os-shell
      image: docker.io/bitnami/os-shell:11-debian-11-r90
  licenses: Apache-2.0
apiVersion: v2
appVersion: 2.7.3
created: "2024-09-06T03:45:34.631482354Z"
dependencies:
  - condition: redis.enabled
    name: redis
    repository: oci://registry-1.docker.io/bitnamicharts
    version: 18.x.x
  - condition: postgresql.enabled
    name: postgresql
    repository: oci://registry-1.docker.io/bitnamicharts
    version: 13.x.x
  - name: common
    repository: oci://registry-1.docker.io/bitnamicharts
    tags:
      - bitnami-common
    version: 2.x.x
description: Apache Airflow is a tool to express and execute workflows as directed acyclic graphs (DAGs). It includes utilities to schedule tasks, monitor task progress and handle task dependencies.
digest: 9c99cdcb67e25c672a16ea7e9970dd9446ea1c98fdda5c86e3b9c52539e80905
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/airflow/img/airflow-stack-220x234.png
keywords:
  - apache
  - airflow
  - workflow
  - dag
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: airflow
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/airflow
urls:
  - airflow-16.1.2.tgz
version: 16.1.2
```
