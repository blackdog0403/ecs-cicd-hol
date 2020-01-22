---
title: "ECS and CI/CD Workshop"
chapter: true
weight: 1
---

## Overall Archtecture

본 HOL통해서 아래와 같은 아키텍처를 구성합니다. 이번 실습을 통하여 AWS상의 VPC위에 EC2기반의 ECS 클러스터를 생성하고 nginx컨테이너를 ECS클러스터 위에 배포합니다. 이를 위해서 ECS클러스터를 위한 Task definition 및 Service 를 생성하고 Code Pipeline으로 파이프라인을 생성하여 지속적으로 소스를 빌드하고 배포합니다.

![Alt](images/overall-architecture.png "create pipe")

추가적으로 각 구성요소에 대한 상세한 내용을 알고 싶으시다면 다음의 리소소들을 참조해주세요.

- [What is AWS VPC?](https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html)
- [What is Elastic Load Balancing](https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/what-is-load-balancing.html)
- [What is Amazon Elastic Container Service?](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/Welcome.html)
- [What is Amazon Elastic Container Registry?](https://docs.aws.amazon.com/AmazonECR/latest/userguide/what-is-ecr.html)
- [What Is AWS CodePipeline?](https://docs.aws.amazon.com/codepipeline/latest/userguide/welcome.html)
