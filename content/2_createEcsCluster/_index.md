---
title: "Elastic Container Service"
chapter: true
weight: 200
---

# ECS 클러스터 생성하기

![Alt](/images/architecture/ecs.png "vpc and ecr")

이번 단락에서는 앞에서 준비한 VPC에 EC2기반의 ECS 클러스터를 생성합니다. 이렇게 생성한 ECS 클러스터 위에 앞에서 빌드한 Nginx기반의 이미지로 task, service를 정의하고 이를 ALB로 외부로 노출하는 실습을 수행합니다.

{{% children %}}



