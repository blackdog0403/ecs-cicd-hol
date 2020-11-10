---
title: "ECS and CI/CD Workshop"
chapter: true
weight: 1
---

# ECS and CI/CD Workshop
![Alt](images/overall-architecture-2.png "create pipe")

이 워크샵을 통하여 AWS상의 VPC를 구성하고 그 위에 EC2기반의 ECS 클러스터를 생성하고 nginx컨테이너를 ECS클러스터 위에 배포합니다. 이를 위해서 ECS클러스터를 위한 Task definition 및 Service 를 생성하고 Code Pipeline으로 파이프라인을 생성하여 지속적으로 소스를 빌드하고 배포합니다. 이렇게 ECS 클러스터 위에 배포된 워크로드들을 Amazon Cloud Watch를 통해서 메트릭/로그를 모니터링 합니다.
