---
layout: page
title: Charts
permalink: /charts/
---
### Table of Contents
{: .no_toc }
1. TOC
{:toc}
---
### Adding Repository
```shell
helm repo add fredric18 https://utils.fredric18.online/charts
```
---
### Chart List
#### Analytics
##### fluentd:5.9.8
> [!NOTE]
> Fluentd collects events from various data sources and writes them to files, RDBMS, NoSQL, IaaS, SaaS, Hadoop and so on.
   
```yaml
annotations:
  category: Analytics
  images: |
    - name: fluentd
      image: docker.io/bitnami/fluentd:1.16.2-debian-11-r80
  licenses: Apache-2.0
apiVersion: v2
appVersion: 1.16.2
created: "2024-09-06T03:45:34.660247549Z"
dependencies:
  - name: common
    repository: oci://registry-1.docker.io/bitnamicharts
    tags:
      - bitnami-common
    version: 2.x.x
description: Fluentd collects events from various data sources and writes them to files, RDBMS, NoSQL, IaaS, SaaS, Hadoop and so on.
digest: 44e7f0142f47553c39b76291589f135eebf5bc54394683f50dae044346b113a2
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/fluentd/img/fluentd-stack-220x234.png
keywords:
  - fluentd
  - logging
  - logs
  - data
  - collector
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: fluentd
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/fluentd
urls:
  - fluentd-5.9.8.tgz
version: 5.9.8
```
##### kibana:10.6.1
> [!NOTE]
> Kibana is an open source, browser based analytics and search dashboard for Elasticsearch. Kibana strives to be easy to get started with, while also being flexible and powerful.
   
```yaml
annotations:
  category: Analytics
  images: |
    - name: kibana
      image: docker.io/bitnami/kibana:8.10.4-debian-11-r0
    - name: os-shell
      image: docker.io/bitnami/os-shell:11-debian-11-r90
  licenses: Apache-2.0
apiVersion: v2
appVersion: 8.10.4
created: "2024-09-06T03:45:34.708793369Z"
dependencies:
  - name: common
    repository: oci://registry-1.docker.io/bitnamicharts
    tags:
      - bitnami-common
    version: 2.x.x
description: Kibana is an open source, browser based analytics and search dashboard for Elasticsearch. Kibana strives to be easy to get started with, while also being flexible and powerful.
digest: 20135e9b6dce09fed3938c9b02962ebe4010956ed130238aad318bd9d308b0f4
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/kibana/img/kibana-stack-220x234.png
keywords:
  - kibana
  - analytics
  - monitoring
  - metrics
  - logs
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: kibana
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/kibana
urls:
  - kibana-10.6.1.tgz
version: 10.6.1
```
#### CertificateAuthority
##### cert-manager:0.13.3
> [!NOTE]
> cert-manager is a Kubernetes add-on to automate the management and issuance of TLS certificates from various issuing sources.
   
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
created: "2024-09-06T03:45:34.654543642Z"
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
#### Database
##### cassandra:10.12.1
> [!NOTE]
> Apache Cassandra is an open source distributed database management system designed to handle large amounts of data across many servers, providing high availability with no single point of failure.
   
```yaml
annotations:
  category: Database
  images: |
    - name: cassandra
      image: docker.io/bitnami/cassandra:4.1.4-debian-12-r4
    - name: cassandra-exporter
      image: docker.io/bitnami/cassandra-exporter:2.3.8-debian-12-r17
    - name: os-shell
      image: docker.io/bitnami/os-shell:12-debian-12-r16
  licenses: Apache-2.0
apiVersion: v2
appVersion: 4.1.4
created: "2024-09-06T03:45:34.650572753Z"
dependencies:
  - name: common
    repository: oci://registry-1.docker.io/bitnamicharts
    tags:
      - bitnami-common
    version: 2.x.x
description: Apache Cassandra is an open source distributed database management system designed to handle large amounts of data across many servers, providing high availability with no single point of failure.
digest: b21b272eaf794ee8a2fc361dc0cdf498fb6e1e7db88b7b09f15148e52e76477e
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/cassandra/img/cassandra-stack-220x234.png
keywords:
  - cassandra
  - database
  - nosql
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: cassandra
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/cassandra
urls:
  - cassandra-10.12.1.tgz
version: 10.12.1
```
##### mariadb:16.5.0
> [!NOTE]
> MariaDB is an open source, community-developed SQL database server that is widely in use around the world due to its enterprise features, flexibility, and collaboration with leading tech firms.
   
```yaml
annotations:
  category: Database
  images: |
    - name: mariadb
      image: docker.io/bitnami/mariadb:11.2.3-debian-12-r4
    - name: mysqld-exporter
      image: docker.io/bitnami/mysqld-exporter:0.15.1-debian-12-r8
    - name: os-shell
      image: docker.io/bitnami/os-shell:12-debian-12-r16
  licenses: Apache-2.0
apiVersion: v2
appVersion: 11.2.3
created: "2024-09-06T03:45:34.73620277Z"
dependencies:
  - name: common
    repository: oci://registry-1.docker.io/bitnamicharts
    tags:
      - bitnami-common
    version: 2.x.x
description: MariaDB is an open source, community-developed SQL database server that is widely in use around the world due to its enterprise features, flexibility, and collaboration with leading tech firms.
digest: 7034831663964829d77722694029a6074e8d4e5307cc8fc65a2f6afc4766175c
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/mariadb/img/mariadb-stack-220x234.png
keywords:
  - mariadb
  - mysql
  - database
  - sql
  - prometheus
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: mariadb
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/mariadb
urls:
  - mariadb-16.5.0.tgz
version: 16.5.0
```
##### postgresql:13.2.23
> [!NOTE]
> PostgreSQL (Postgres) is an open source object-relational database known for reliability and data integrity. ACID-compliant, it supports foreign keys, joins, views, triggers and stored procedures.
   
```yaml
annotations:
  category: Database
  images: |
    - name: os-shell
      image: docker.io/bitnami/os-shell:11-debian-11-r91
    - name: postgres-exporter
      image: docker.io/bitnami/postgres-exporter:0.15.0-debian-11-r2
    - name: postgresql
      image: docker.io/bitnami/postgresql:16.1.0-debian-11-r15
  licenses: Apache-2.0
apiVersion: v2
appVersion: 16.1.0
created: "2024-09-06T03:45:34.748300204Z"
dependencies:
  - name: common
    repository: oci://registry-1.docker.io/bitnamicharts
    tags:
      - bitnami-common
    version: 2.x.x
description: PostgreSQL (Postgres) is an open source object-relational database known for reliability and data integrity. ACID-compliant, it supports foreign keys, joins, views, triggers and stored procedures.
digest: 6f92281c248236c33d676b08faa9a6ea995e0f890724d4eedc2ffe990d433b71
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/postgresql/img/postgresql-stack-220x234.png
keywords:
  - postgresql
  - postgres
  - database
  - sql
  - replication
  - cluster
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: postgresql
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/postgresql
urls:
  - postgresql-13.2.23.tgz
version: 13.2.23
```
##### redis:19.0.1
> [!NOTE]
> Redis(R) is an open source, advanced key-value store. It is often referred to as a data structure server since keys can contain strings, hashes, lists, sets and sorted sets.
   
```yaml
annotations:
  category: Database
  images: |
    - name: kubectl
      image: docker.io/bitnami/kubectl:1.29.2-debian-12-r3
    - name: os-shell
      image: docker.io/bitnami/os-shell:12-debian-12-r16
    - name: redis
      image: docker.io/bitnami/redis:7.2.4-debian-12-r9
    - name: redis-exporter
      image: docker.io/bitnami/redis-exporter:1.58.0-debian-12-r4
    - name: redis-sentinel
      image: docker.io/bitnami/redis-sentinel:7.2.4-debian-12-r7
  licenses: Apache-2.0
apiVersion: v2
appVersion: 7.2.4
created: "2024-09-06T03:45:34.751710439Z"
dependencies:
  - name: common
    repository: oci://registry-1.docker.io/bitnamicharts
    tags:
      - bitnami-common
    version: 2.x.x
description: Redis(R) is an open source, advanced key-value store. It is often referred to as a data structure server since keys can contain strings, hashes, lists, sets and sorted sets.
digest: 6c71f072089256fd49cd9f09a19f098f1349ea3e9eee422c190c373e63ddd885
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/redis/img/redis-stack-220x234.png
keywords:
  - redis
  - keyvalue
  - database
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: redis
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/redis
urls:
  - redis-19.0.1.tgz
version: 19.0.1
```
#### DeveloperTools
##### keycloak:17.3.1
> [!NOTE]
> Keycloak is a high performance Java-based identity and access management solution. It lets developers add an authentication layer to their applications with minimum effort.
   
```yaml
annotations:
  category: DeveloperTools
  images: |
    - name: keycloak-config-cli
      image: docker.io/bitnami/keycloak-config-cli:5.9.0-debian-11-r0
    - name: keycloak
      image: docker.io/bitnami/keycloak:22.0.5-debian-11-r0
  licenses: Apache-2.0
apiVersion: v2
appVersion: 22.0.5
created: "2024-09-06T03:45:34.706134525Z"
dependencies:
  - condition: postgresql.enabled
    name: postgresql
    repository: oci://registry-1.docker.io/bitnamicharts
    version: 13.x.x
  - name: common
    repository: oci://registry-1.docker.io/bitnamicharts
    tags:
      - bitnami-common
    version: 2.x.x
description: Keycloak is a high performance Java-based identity and access management solution. It lets developers add an authentication layer to their applications with minimum effort.
digest: ab05a6fe82c46a21ae10c0d2cbb5f2b89abdabf339aebe8b10311b79070ab64c
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/keycloak/img/keycloak-stack-220x234.png
keywords:
  - keycloak
  - access-management
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: keycloak
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/keycloak
urls:
  - keycloak-17.3.1.tgz
version: 17.3.1
```
##### sonarqube:4.1.1
> [!NOTE]
> SonarQube(TM) is an open source quality management platform that analyzes and measures code's technical quality. It enables developers to detect code issues, vulnerabilities, and bugs in early stages.
   
```yaml
annotations:
  category: DeveloperTools
  images: |
    - name: jmx-exporter
      image: docker.io/bitnami/jmx-exporter:0.20.0-debian-11-r0
    - name: os-shell
      image: docker.io/bitnami/os-shell:11-debian-11-r90
    - name: sonarqube
      image: docker.io/bitnami/sonarqube:10.2.1-debian-11-r10
  licenses: Apache-2.0
apiVersion: v2
appVersion: 10.2.1
created: "2024-09-06T03:45:34.758800971Z"
dependencies:
  - condition: postgresql.enabled
    name: postgresql
    repository: oci://registry-1.docker.io/bitnamicharts
    version: 13.x.x
  - name: common
    repository: oci://registry-1.docker.io/bitnamicharts
    tags:
      - bitnami-common
    version: 2.x.x
description: SonarQube(TM) is an open source quality management platform that analyzes and measures code's technical quality. It enables developers to detect code issues, vulnerabilities, and bugs in early stages.
digest: 61537cdb9db1681eabecf3445ffade8582dec486e8b645ed98db2dd2d791fe82
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/sonarqube/img/sonarqube-stack-220x234.png
keywords:
  - sonarqube
  - code-quality
  - code-review
  - static-analysis
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: sonarqube
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/sonarqube
urls:
  - sonarqube-4.1.1.tgz
version: 4.1.1
```
#### Infrastructure
##### apache:10.2.1
> [!NOTE]
> Apache HTTP Server is an open-source HTTP server. The goal of this project is to provide a secure, efficient and extensible server that provides HTTP services in sync with the current HTTP standards.
   
```yaml
annotations:
  category: Infrastructure
  images: |
    - name: apache-exporter
      image: docker.io/bitnami/apache-exporter:1.0.3-debian-11-r0
    - name: apache
      image: docker.io/bitnami/apache:2.4.58-debian-11-r0
    - name: git
      image: docker.io/bitnami/git:2.42.1-debian-11-r0
  licenses: Apache-2.0
apiVersion: v2
appVersion: 2.4.58
created: "2024-09-06T03:45:34.633284923Z"
dependencies:
  - name: common
    repository: oci://registry-1.docker.io/bitnamicharts
    tags:
      - bitnami-common
    version: 2.x.x
description: Apache HTTP Server is an open-source HTTP server. The goal of this project is to provide a secure, efficient and extensible server that provides HTTP services in sync with the current HTTP standards.
digest: 805fbba99f770bfe03662c106663302dea8a8f4b861986a42aee9c244d53c760
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/apache/img/apache-stack-220x234.png
keywords:
  - apache
  - http
  - https
  - www
  - web
  - reverse proxy
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: apache
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/apache
urls:
  - apache-10.2.1.tgz
version: 10.2.1
```
##### argo-cd:6.0.9
> [!NOTE]
> Argo CD is a continuous delivery tool for Kubernetes based on GitOps.
   
```yaml
annotations:
  category: Infrastructure
  images: |
    - name: argo-cd
      image: docker.io/bitnami/argo-cd:2.10.6-debian-12-r2
    - name: dex
      image: docker.io/bitnami/dex:2.39.1-debian-12-r0
    - name: os-shell
      image: docker.io/bitnami/os-shell:12-debian-12-r18
    - name: redis
      image: docker.io/bitnami/redis:7.2.4-debian-12-r11
  licenses: Apache-2.0
apiVersion: v2
appVersion: 2.10.6
created: "2024-09-06T03:45:34.646689778Z"
dependencies:
  - condition: redis.enabled
    name: redis
    repository: oci://registry-1.docker.io/bitnamicharts
    version: 19.x.x
  - name: common
    repository: oci://registry-1.docker.io/bitnamicharts
    tags:
      - bitnami-common
    version: 2.x.x
description: Argo CD is a continuous delivery tool for Kubernetes based on GitOps.
digest: ddc0051cacd6266b11b7a5dcfe28edf383bb66ba1c805b98c06cc1ebc56b93da
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/argo-cd/img/argo-cd-stack-220x234.png
keywords:
  - Continuous delivery
  - Continuous deployment
  - Devops
  - Kubernetes
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: argo-cd
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/argo-cd
urls:
  - argo-cd-6.0.9.tgz
version: 6.0.9
```
##### harbor:19.1.1
> [!NOTE]
> Harbor is an open source trusted cloud-native registry to store, sign, and scan content. It adds functionalities like security, identity, and management to the open source Docker distribution.
   
```yaml
annotations:
  category: Infrastructure
  images: |
    - name: harbor-adapter-trivy
      image: docker.io/bitnami/harbor-adapter-trivy:2.9.1-debian-11-r0
    - name: harbor-core
      image: docker.io/bitnami/harbor-core:2.9.1-debian-11-r1
    - name: harbor-exporter
      image: docker.io/bitnami/harbor-exporter:2.9.1-debian-11-r1
    - name: harbor-jobservice
      image: docker.io/bitnami/harbor-jobservice:2.9.1-debian-11-r1
    - name: harbor-registry
      image: docker.io/bitnami/harbor-registry:2.9.1-debian-11-r1
    - name: harbor-registryctl
      image: docker.io/bitnami/harbor-registryctl:2.9.1-debian-11-r1
    - name: harbor-portal
      image: docker.io/bitnami/harbor-portal:2.9.1-debian-11-r0
    - name: nginx
      image: docker.io/bitnami/nginx:1.25.3-debian-11-r1
    - name: os-shell
      image: docker.io/bitnami/os-shell:11-debian-11-r91
    - name: postgresql
      image: docker.io/bitnami/postgresql:13.13.0-debian-11-r0
  licenses: Apache-2.0
apiVersion: v2
appVersion: 2.9.1
created: "2024-09-06T03:45:34.675071311Z"
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
description: Harbor is an open source trusted cloud-native registry to store, sign, and scan content. It adds functionalities like security, identity, and management to the open source Docker distribution.
digest: c4ba080530802c0fa71171bffd76ade304374358d48fd887f0f03c5b7bb1ae1c
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/harbor-core/img/harbor-core-stack-220x234.png
keywords:
  - docker
  - registry
  - vulnerability
  - scan
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: harbor
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/harbor
urls:
  - harbor-19.1.1.tgz
version: 19.1.1
```
##### jenkins:12.4.2
> [!NOTE]
> Jenkins is an open source Continuous Integration and Continuous Delivery (CI/CD) server designed to automate the building, testing, and deploying of any software project.
   
```yaml
annotations:
  category: Infrastructure
  images: |
    - name: jenkins-agent
      image: docker.io/bitnami/jenkins-agent:0.3192.0-debian-11-r0
    - name: jenkins
      image: docker.io/bitnami/jenkins:2.414.3-debian-11-r1
    - name: os-shell
      image: docker.io/bitnami/os-shell:11-debian-11-r90
  licenses: Apache-2.0
apiVersion: v2
appVersion: 2.414.3
created: "2024-09-06T03:45:34.69281219Z"
dependencies:
  - name: common
    repository: oci://registry-1.docker.io/bitnamicharts
    tags:
      - bitnami-common
    version: 2.x.x
description: Jenkins is an open source Continuous Integration and Continuous Delivery (CI/CD) server designed to automate the building, testing, and deploying of any software project.
digest: 151cf27c25dfc5d11b939759d7c93341b95de43ba7e20a024a047d581308ed5e
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/jenkins/img/jenkins-stack-220x234.png
keywords:
  - jenkins
  - ci
  - cd
  - http
  - web
  - application
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: jenkins
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/jenkins
urls:
  - jenkins-12.4.2.tgz
version: 12.4.2
```
##### kafka:26.4.0
> [!NOTE]
> Apache Kafka is a distributed streaming platform designed to build real-time pipelines and can be used as a message broker or as a replacement for a log aggregation solution for big data applications.
   
```yaml
annotations:
  category: Infrastructure
  images: |
    - name: jmx-exporter
      image: docker.io/bitnami/jmx-exporter:0.20.0-debian-11-r0
    - name: kafka-exporter
      image: docker.io/bitnami/kafka-exporter:1.7.0-debian-11-r132
    - name: kafka
      image: docker.io/bitnami/kafka:3.6.0-debian-11-r1
    - name: kubectl
      image: docker.io/bitnami/kubectl:1.28.3-debian-11-r0
    - name: os-shell
      image: docker.io/bitnami/os-shell:11-debian-11-r90
  licenses: Apache-2.0
apiVersion: v2
appVersion: 3.6.0
created: "2024-09-06T03:45:34.699663968Z"
dependencies:
  - condition: zookeeper.enabled
    name: zookeeper
    repository: oci://registry-1.docker.io/bitnamicharts
    version: 12.x.x
  - name: common
    repository: oci://registry-1.docker.io/bitnamicharts
    tags:
      - bitnami-common
    version: 2.x.x
description: Apache Kafka is a distributed streaming platform designed to build real-time pipelines and can be used as a message broker or as a replacement for a log aggregation solution for big data applications.
digest: c5bbd724c582053fa1ea4e4c9520efbf9f0b669770b2360824cff10fc381d183
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/kafka/img/kafka-stack-220x234.png
keywords:
  - kafka
  - zookeeper
  - streaming
  - producer
  - consumer
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: kafka
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/kafka
urls:
  - kafka-26.4.0.tgz
version: 26.4.0
```
##### minio:12.9.4
> [!NOTE]
> MinIO(R) is an object storage server, compatible with Amazon S3 cloud storage service, mainly used for storing unstructured data (such as photos, videos, log files, etc.).
   
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
created: "2024-09-06T03:45:34.739806585Z"
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
##### nginx-ingress-controller:10.7.0
> [!NOTE]
> NGINX Ingress Controller is an Ingress controller that manages external access to HTTP services in a Kubernetes cluster using NGINX.
   
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
created: "2024-09-06T03:45:34.743954096Z"
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
#### MachineLearning
##### tensorflow-resnet:3.10.2
> [!NOTE]
> TensorFlow ResNet is a client utility for use with TensorFlow Serving and ResNet models.
   
```yaml
annotations:
  category: MachineLearning
  images: |
    - name: tensorflow-resnet
      image: docker.io/bitnami/tensorflow-resnet:2.14.0-debian-11-r0
    - name: tensorflow-serving
      image: docker.io/bitnami/tensorflow-serving:2.14.0-debian-11-r0
  licenses: Apache-2.0
apiVersion: v2
appVersion: 2.14.0
created: "2024-09-06T03:45:34.760562792Z"
dependencies:
  - name: common
    repository: oci://registry-1.docker.io/bitnamicharts
    tags:
      - bitnami-common
    version: 2.x.x
description: TensorFlow ResNet is a client utility for use with TensorFlow Serving and ResNet models.
digest: 3f35ce9e32707a4c4c10e894cfa86527a940857fffb4755279ef97370a0ce19f
home: https://bitnami.com
icon: https://bitnami.com/assets/stacks/tensorflow-inception/img/tensorflow-inception-stack-220x234.png
keywords:
  - tensorflow
  - serving
  - resnet
  - machine
  - learning
  - library
maintainers:
  - name: VMware, Inc.
    url: https://github.com/bitnami/charts
name: tensorflow-resnet
sources:
  - https://github.com/bitnami/charts/tree/main/bitnami/tensorflow-resnet
urls:
  - tensorflow-resnet-3.10.2.tgz
version: 3.10.2
```
#### WorkFlow
##### airflow:16.1.2
> [!NOTE]
> Apache Airflow is a tool to express and execute workflows as directed acyclic graphs (DAGs). It includes utilities to schedule tasks, monitor task progress and handle task dependencies.
   
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
#### Undefined Category
##### docker-mailserver:3.0.10
> [!NOTE]
> A fullstack but simple mailserver (smtp, imap, antispam, antivirus, ssl...) using Docker.
   
```yaml
annotations:
  artifacthub.io/changes: |
    - Breaking : Standardized app labels to app.kubernetes.io/name for Istio workload/Cilium compatibility
apiVersion: v2
appVersion: 13.3.1
created: "2024-09-06T03:45:34.656879665Z"
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
##### kube-prometheus-stack:58.3.1
> [!NOTE]
> kube-prometheus-stack collects Kubernetes manifests, Grafana dashboards, and Prometheus rules combined with documentation and scripts to provide easy to operate end-to-end Kubernetes cluster monitoring with Prometheus using the Prometheus Operator.
   
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
created: "2024-09-06T03:45:34.733131647Z"
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
##### minecraft:4.15.0
> [!NOTE]
> Minecraft server
   
```yaml
annotations:
  artifacthub.io/links: |
    - name: Image source
      url: https://github.com/itzg/docker-minecraft-server
    - name: Image DockerHub
      url: https://hub.docker.com/r/itzg/minecraft-server
apiVersion: v1
appVersion: SeeValues
created: "2024-09-06T03:45:34.737463379Z"
description: Minecraft server
digest: d358dafacd637743abdb057318773e44fbf13edb8f4e606d7c204a92d0dedad9
home: https://minecraft.net/
keywords:
  - game
  - server
maintainers:
  - email: gtaylor@gc-taylor.com
    name: gtaylor
  - email: jeff@billimek.com
    name: billimek
  - email: itzgeoff@gmail.com
    name: itzg
  - email: yannik@carbongem.com
    name: bibz87
name: minecraft
sources:
  - https://github.com/itzg/minecraft-server-charts
urls:
  - minecraft-4.15.0.tgz
version: 4.15.0
```
##### palworld:0.1.0
> [!NOTE]
> This chart will provide a Palworld server installation on a kubernetes cluster
   
```yaml
annotations:
  artifacthub.io/alternativeName: palworld-server
  artifacthub.io/images: |
    - name: palworld-server-docker
      image: thijsvanloef/palworld-server-docker:latest
  artifacthub.io/license: MIT
  artifacthub.io/links: |
    - name: Chart source
      url: https://github.com/thijsvanloef/palworld-server-docker/tree/main/charts/palworld
    - name: Docker image source
      url: https://github.com/thijsvanloef/palworld-server-docker
  artifacthub.io/screenshots: |
    - title: PalWorld
      url: https://cdn.akamai.steamstatic.com/steam/apps/1623730/header.jpg
apiVersion: v2
appVersion: latest
created: "2024-09-06T03:45:34.744891763Z"
description: This chart will provide a Palworld server installation on a kubernetes cluster
digest: 8e2af0fabaf42c4f63650cf252a00e594afe54639e92f3f0578562bad1c7c017
home: https://github.com/thijsvanloef/palworld-server-docker
icon: https://cdn.akamai.steamstatic.com/steam/apps/1623730/header.jpg
keywords:
  - palworld
  - server
  - kubernetes
  - helm
maintainers:
  - email: filipe.souza@mestre8d.com
    name: Filipe Souza
    url: https://github.com/Filipe-Souza
  - name: Twinki
    url: https://github.com/Twinki14
name: palworld
sources:
  - https://github.com/thijsvanloef/palworld-server-docker
type: application
urls:
  - palworld-0.1.0.tgz
version: 0.1.0
```
