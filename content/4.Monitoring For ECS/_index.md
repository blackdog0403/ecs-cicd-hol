---
title: "Monitoring For ECS"
chapter: true
weight: 400
---

# Amazon Cloud Watch 로 ECS 모니터링하기

![Alt](/images/cloudwatch/cloudwatch.png "How Amazon Cloud Watch Works")

[Amazon Cloud Watch Container Insights](https://docs.aws.amazon.com/ko_kr/AmazonCloudWatch/latest/monitoring/ContainerInsights.html)

CloudWatch Container Insights 및 Cloudwatch Logs Log Insights를 사용해 컨테이너식 애플리케이션 및 마이크로서비스의 지표 및 로그를 수집하고 집계하며 요약할 수 있습니다. Container Insights는 Amazon EC2의 Amazon Elastic Container Service(Amazon ECS), Amazon Elastic Kubernetes Service(Amazon EKS) 및 Kubernetes 플랫폼에서 사용할 수 있고 Amazon ECS 지원은 Fargate에 대한 지원을 포함합니다. 

이번 단락에서는 앞에서 생성한 ECS 클러스터와 Service, Task들을 Amazon Cloud Watch Container Insights를 이용하여 모니터링을 하는 법을 실습해 봅니다. 


{{% notice warning %}}
초반에 ECS 클러스터를 생성할 때 Container Insights를 활성화 하시지 않았다면 실습이 진행이 어렵습니다. Container Insights를 활성화 하지 않으셨다면 다음의 링크를 참조하셔서 이미 생성된 ECS 클러스터의 Container Insights 활성활를 하여
실습을 진행하시기 바랍니다. [클러스터 및 서비스 레벨 지표를 위해 Amazon ECS에서 Container Insights 설정](https://docs.aws.amazon.com/ko_kr/AmazonCloudWatch/latest/monitoring/deploy-container-insights-ECS-cluster.html)
{{% /notice %}}

{{% children %}}



