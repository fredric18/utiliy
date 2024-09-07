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
>   
>##### [fluentd:5.9.8](/charts/details/fluentd:5.9.8)
>>###### description
>>{: .no_toc}
>>>Fluentd collects events from various data sources and writes them to files, RDBMS, NoSQL, IaaS, SaaS, Hadoop and so on.
>>   
>>###### images
>>{: .no_toc}
>>>1. docker.io/bitnami/fluentd:1.16.2-debian-11-r80
>>   
>>###### dependencies
>>{: .no_toc}
>>>Name | Version | Repository
>>>---|---|---
>>>common | 2.x.x | oci://registry-1.docker.io/bitnamicharts
>   
>##### [kibana:10.6.1](/charts/details/kibana:10.6.1)
>>###### description
>>{: .no_toc}
>>>Kibana is an open source, browser based analytics and search dashboard for Elasticsearch. Kibana strives to be easy to get started with, while also being flexible and powerful.
>>   
>>###### images
>>{: .no_toc}
>>>1. docker.io/bitnami/kibana:8.10.4-debian-11-r0
>>>1. docker.io/bitnami/os-shell:11-debian-11-r90
>>   
>>###### dependencies
>>{: .no_toc}
>>>Name | Version | Repository
>>>---|---|---
>>>common | 2.x.x | oci://registry-1.docker.io/bitnamicharts
   
#### CertificateAuthority
>   
>##### [cert-manager:0.13.3](/charts/details/cert-manager:0.13.3)
>>###### description
>>{: .no_toc}
>>>cert-manager is a Kubernetes add-on to automate the management and issuance of TLS certificates from various issuing sources.
>>   
>>###### images
>>{: .no_toc}
>>>1. docker.io/bitnami/acmesolver:1.13.2-debian-11-r1
>>>1. docker.io/bitnami/cainjector:1.13.2-debian-11-r1
>>>1. docker.io/bitnami/cert-manager-webhook:1.13.2-debian-11-r1
>>>1. docker.io/bitnami/cert-manager:1.13.2-debian-11-r1
>>   
>>###### dependencies
>>{: .no_toc}
>>>Name | Version | Repository
>>>---|---|---
>>>common | 2.x.x | oci://registry-1.docker.io/bitnamicharts
   
#### Database
>   
>##### [cassandra:10.12.1](/charts/details/cassandra:10.12.1)
>>###### description
>>{: .no_toc}
>>>Apache Cassandra is an open source distributed database management system designed to handle large amounts of data across many servers, providing high availability with no single point of failure.
>>   
>>###### images
>>{: .no_toc}
>>>1. docker.io/bitnami/cassandra:4.1.4-debian-12-r4
>>>1. docker.io/bitnami/cassandra-exporter:2.3.8-debian-12-r17
>>>1. docker.io/bitnami/os-shell:12-debian-12-r16
>>   
>>###### dependencies
>>{: .no_toc}
>>>Name | Version | Repository
>>>---|---|---
>>>common | 2.x.x | oci://registry-1.docker.io/bitnamicharts
>   
>##### [mariadb:16.5.0](/charts/details/mariadb:16.5.0)
>>###### description
>>{: .no_toc}
>>>MariaDB is an open source, community-developed SQL database server that is widely in use around the world due to its enterprise features, flexibility, and collaboration with leading tech firms.
>>   
>>###### images
>>{: .no_toc}
>>>1. docker.io/bitnami/mariadb:11.2.3-debian-12-r4
>>>1. docker.io/bitnami/mysqld-exporter:0.15.1-debian-12-r8
>>>1. docker.io/bitnami/os-shell:12-debian-12-r16
>>   
>>###### dependencies
>>{: .no_toc}
>>>Name | Version | Repository
>>>---|---|---
>>>common | 2.x.x | oci://registry-1.docker.io/bitnamicharts
>   
>##### [postgresql:13.2.23](/charts/details/postgresql:13.2.23)
>>###### description
>>{: .no_toc}
>>>PostgreSQL (Postgres) is an open source object-relational database known for reliability and data integrity. ACID-compliant, it supports foreign keys, joins, views, triggers and stored procedures.
>>   
>>###### images
>>{: .no_toc}
>>>1. docker.io/bitnami/os-shell:11-debian-11-r91
>>>1. docker.io/bitnami/postgres-exporter:0.15.0-debian-11-r2
>>>1. docker.io/bitnami/postgresql:16.1.0-debian-11-r15
>>   
>>###### dependencies
>>{: .no_toc}
>>>Name | Version | Repository
>>>---|---|---
>>>common | 2.x.x | oci://registry-1.docker.io/bitnamicharts
>   
>##### [redis:19.0.1](/charts/details/redis:19.0.1)
>>###### description
>>{: .no_toc}
>>>Redis(R) is an open source, advanced key-value store. It is often referred to as a data structure server since keys can contain strings, hashes, lists, sets and sorted sets.
>>   
>>###### images
>>{: .no_toc}
>>>1. docker.io/bitnami/kubectl:1.29.2-debian-12-r3
>>>1. docker.io/bitnami/os-shell:12-debian-12-r16
>>>1. docker.io/bitnami/redis:7.2.4-debian-12-r9
>>>1. docker.io/bitnami/redis-exporter:1.58.0-debian-12-r4
>>>1. docker.io/bitnami/redis-sentinel:7.2.4-debian-12-r7
>>   
>>###### dependencies
>>{: .no_toc}
>>>Name | Version | Repository
>>>---|---|---
>>>common | 2.x.x | oci://registry-1.docker.io/bitnamicharts
   
#### DeveloperTools
>   
>##### [keycloak:17.3.1](/charts/details/keycloak:17.3.1)
>>###### description
>>{: .no_toc}
>>>Keycloak is a high performance Java-based identity and access management solution. It lets developers add an authentication layer to their applications with minimum effort.
>>   
>>###### images
>>{: .no_toc}
>>>1. docker.io/bitnami/keycloak-config-cli:5.9.0-debian-11-r0
>>>1. docker.io/bitnami/keycloak:22.0.5-debian-11-r0
>>   
>>###### dependencies
>>{: .no_toc}
>>>Name | Version | Repository
>>>---|---|---
>>>postgresql | 13.x.x | oci://registry-1.docker.io/bitnamicharts
>>>common | 2.x.x | oci://registry-1.docker.io/bitnamicharts
>   
>##### [sonarqube:4.1.1](/charts/details/sonarqube:4.1.1)
>>###### description
>>{: .no_toc}
>>>SonarQube(TM) is an open source quality management platform that analyzes and measures code's technical quality. It enables developers to detect code issues, vulnerabilities, and bugs in early stages.
>>   
>>###### images
>>{: .no_toc}
>>>1. docker.io/bitnami/jmx-exporter:0.20.0-debian-11-r0
>>>1. docker.io/bitnami/os-shell:11-debian-11-r90
>>>1. docker.io/bitnami/sonarqube:10.2.1-debian-11-r10
>>   
>>###### dependencies
>>{: .no_toc}
>>>Name | Version | Repository
>>>---|---|---
>>>postgresql | 13.x.x | oci://registry-1.docker.io/bitnamicharts
>>>common | 2.x.x | oci://registry-1.docker.io/bitnamicharts
   
#### Infrastructure
>   
>##### [apache:10.2.1](/charts/details/apache:10.2.1)
>>###### description
>>{: .no_toc}
>>>Apache HTTP Server is an open-source HTTP server. The goal of this project is to provide a secure, efficient and extensible server that provides HTTP services in sync with the current HTTP standards.
>>   
>>###### images
>>{: .no_toc}
>>>1. docker.io/bitnami/apache-exporter:1.0.3-debian-11-r0
>>>1. docker.io/bitnami/apache:2.4.58-debian-11-r0
>>>1. docker.io/bitnami/git:2.42.1-debian-11-r0
>>   
>>###### dependencies
>>{: .no_toc}
>>>Name | Version | Repository
>>>---|---|---
>>>common | 2.x.x | oci://registry-1.docker.io/bitnamicharts
>   
>##### [argo-cd:6.0.9](/charts/details/argo-cd:6.0.9)
>>###### description
>>{: .no_toc}
>>>Argo CD is a continuous delivery tool for Kubernetes based on GitOps.
>>   
>>###### images
>>{: .no_toc}
>>>1. docker.io/bitnami/argo-cd:2.10.6-debian-12-r2
>>>1. docker.io/bitnami/dex:2.39.1-debian-12-r0
>>>1. docker.io/bitnami/os-shell:12-debian-12-r18
>>>1. docker.io/bitnami/redis:7.2.4-debian-12-r11
>>   
>>###### dependencies
>>{: .no_toc}
>>>Name | Version | Repository
>>>---|---|---
>>>redis | 19.x.x | oci://registry-1.docker.io/bitnamicharts
>>>common | 2.x.x | oci://registry-1.docker.io/bitnamicharts
>   
>##### [harbor:19.1.1](/charts/details/harbor:19.1.1)
>>###### description
>>{: .no_toc}
>>>Harbor is an open source trusted cloud-native registry to store, sign, and scan content. It adds functionalities like security, identity, and management to the open source Docker distribution.
>>   
>>###### images
>>{: .no_toc}
>>>1. docker.io/bitnami/harbor-adapter-trivy:2.9.1-debian-11-r0
>>>1. docker.io/bitnami/harbor-core:2.9.1-debian-11-r1
>>>1. docker.io/bitnami/harbor-exporter:2.9.1-debian-11-r1
>>>1. docker.io/bitnami/harbor-jobservice:2.9.1-debian-11-r1
>>>1. docker.io/bitnami/harbor-registry:2.9.1-debian-11-r1
>>>1. docker.io/bitnami/harbor-registryctl:2.9.1-debian-11-r1
>>>1. docker.io/bitnami/harbor-portal:2.9.1-debian-11-r0
>>>1. docker.io/bitnami/nginx:1.25.3-debian-11-r1
>>>1. docker.io/bitnami/os-shell:11-debian-11-r91
>>>1. docker.io/bitnami/postgresql:13.13.0-debian-11-r0
>>   
>>###### dependencies
>>{: .no_toc}
>>>Name | Version | Repository
>>>---|---|---
>>>redis | 18.x.x | oci://registry-1.docker.io/bitnamicharts
>>>postgresql | 13.x.x | oci://registry-1.docker.io/bitnamicharts
>>>common | 2.x.x | oci://registry-1.docker.io/bitnamicharts
>   
>##### [jenkins:12.4.2](/charts/details/jenkins:12.4.2)
>>###### description
>>{: .no_toc}
>>>Jenkins is an open source Continuous Integration and Continuous Delivery (CI/CD) server designed to automate the building, testing, and deploying of any software project.
>>   
>>###### images
>>{: .no_toc}
>>>1. docker.io/bitnami/jenkins-agent:0.3192.0-debian-11-r0
>>>1. docker.io/bitnami/jenkins:2.414.3-debian-11-r1
>>>1. docker.io/bitnami/os-shell:11-debian-11-r90
>>   
>>###### dependencies
>>{: .no_toc}
>>>Name | Version | Repository
>>>---|---|---
>>>common | 2.x.x | oci://registry-1.docker.io/bitnamicharts
>   
>##### [kafka:26.4.0](/charts/details/kafka:26.4.0)
>>###### description
>>{: .no_toc}
>>>Apache Kafka is a distributed streaming platform designed to build real-time pipelines and can be used as a message broker or as a replacement for a log aggregation solution for big data applications.
>>   
>>###### images
>>{: .no_toc}
>>>1. docker.io/bitnami/jmx-exporter:0.20.0-debian-11-r0
>>>1. docker.io/bitnami/kafka-exporter:1.7.0-debian-11-r132
>>>1. docker.io/bitnami/kafka:3.6.0-debian-11-r1
>>>1. docker.io/bitnami/kubectl:1.28.3-debian-11-r0
>>>1. docker.io/bitnami/os-shell:11-debian-11-r90
>>   
>>###### dependencies
>>{: .no_toc}
>>>Name | Version | Repository
>>>---|---|---
>>>zookeeper | 12.x.x | oci://registry-1.docker.io/bitnamicharts
>>>common | 2.x.x | oci://registry-1.docker.io/bitnamicharts
>   
>##### [minio:12.9.4](/charts/details/minio:12.9.4)
>>###### description
>>{: .no_toc}
>>>MinIO(R) is an object storage server, compatible with Amazon S3 cloud storage service, mainly used for storing unstructured data (such as photos, videos, log files, etc.).
>>   
>>###### images
>>{: .no_toc}
>>>1. docker.io/bitnami/minio-client:2023.11.6-debian-11-r1
>>>1. docker.io/bitnami/minio:2023.11.11-debian-11-r0
>>>1. docker.io/bitnami/os-shell:11-debian-11-r91
>>   
>>###### dependencies
>>{: .no_toc}
>>>Name | Version | Repository
>>>---|---|---
>>>common | 2.x.x | oci://registry-1.docker.io/bitnamicharts
>   
>##### [nginx-ingress-controller:10.7.0](/charts/details/nginx-ingress-controller:10.7.0)
>>###### description
>>{: .no_toc}
>>>NGINX Ingress Controller is an Ingress controller that manages external access to HTTP services in a Kubernetes cluster using NGINX.
>>   
>>###### images
>>{: .no_toc}
>>>1. docker.io/bitnami/nginx:1.25.4-debian-12-r2
>>>1. docker.io/bitnami/nginx-ingress-controller:1.9.6-debian-12-r8
>>   
>>###### dependencies
>>{: .no_toc}
>>>Name | Version | Repository
>>>---|---|---
>>>common | 2.x.x | oci://registry-1.docker.io/bitnamicharts
   
#### MachineLearning
>   
>##### [tensorflow-resnet:3.10.2](/charts/details/tensorflow-resnet:3.10.2)
>>###### description
>>{: .no_toc}
>>>TensorFlow ResNet is a client utility for use with TensorFlow Serving and ResNet models.
>>   
>>###### images
>>{: .no_toc}
>>>1. docker.io/bitnami/tensorflow-resnet:2.14.0-debian-11-r0
>>>1. docker.io/bitnami/tensorflow-serving:2.14.0-debian-11-r0
>>   
>>###### dependencies
>>{: .no_toc}
>>>Name | Version | Repository
>>>---|---|---
>>>common | 2.x.x | oci://registry-1.docker.io/bitnamicharts
   
#### WorkFlow
>   
>##### [airflow:16.1.2](/charts/details/airflow:16.1.2)
>>###### description
>>{: .no_toc}
>>>Apache Airflow is a tool to express and execute workflows as directed acyclic graphs (DAGs). It includes utilities to schedule tasks, monitor task progress and handle task dependencies.
>>   
>>###### images
>>{: .no_toc}
>>>1. docker.io/bitnami/airflow-exporter:0.20220314.0-debian-11-r440
>>>1. docker.io/bitnami/airflow-scheduler:2.7.3-debian-11-r0
>>>1. docker.io/bitnami/airflow-worker:2.7.3-debian-11-r0
>>>1. docker.io/bitnami/airflow:2.7.3-debian-11-r0
>>>1. docker.io/bitnami/git:2.42.1-debian-11-r0
>>>1. docker.io/bitnami/os-shell:11-debian-11-r90
>>   
>>###### dependencies
>>{: .no_toc}
>>>Name | Version | Repository
>>>---|---|---
>>>redis | 18.x.x | oci://registry-1.docker.io/bitnamicharts
>>>postgresql | 13.x.x | oci://registry-1.docker.io/bitnamicharts
>>>common | 2.x.x | oci://registry-1.docker.io/bitnamicharts
   
#### Undefined Category
>   
>##### [docker-mailserver:3.0.10](/charts/details/docker-mailserver:3.0.10)
>>###### description
>>{: .no_toc}
>>>A fullstack but simple mailserver (smtp, imap, antispam, antivirus, ssl...) using Docker.
>   
>##### [kube-prometheus-stack:58.3.1](/charts/details/kube-prometheus-stack:58.3.1)
>>###### description
>>{: .no_toc}
>>>kube-prometheus-stack collects Kubernetes manifests, Grafana dashboards, and Prometheus rules combined with documentation and scripts to provide easy to operate end-to-end Kubernetes cluster monitoring with Prometheus using the Prometheus Operator.
>>   
>>###### dependencies
>>{: .no_toc}
>>>Name | Version | Repository
>>>---|---|---
>>>crds | 0.0.0 | 
>>>kube-state-metrics | 5.19.* | https://prometheus-community.github.io/helm-charts
>>>prometheus-node-exporter | 4.33.* | https://prometheus-community.github.io/helm-charts
>>>grafana | 7.3.* | https://grafana.github.io/helm-charts
>>>prometheus-windows-exporter | 0.3.* | https://prometheus-community.github.io/helm-charts
>   
>##### [minecraft:4.15.0](/charts/details/minecraft:4.15.0)
>>###### description
>>{: .no_toc}
>>>Minecraft server
>   
>##### [palworld:0.1.0](/charts/details/palworld:0.1.0)
>>###### description
>>{: .no_toc}
>>>This chart will provide a Palworld server installation on a kubernetes cluster
