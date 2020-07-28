---
title: "Cloud Watch Log Insights로 성능 모니터링하기"
date: 2020-01-22T09:46:32+09:00
draft: false
weight: 100
---

## Cloud Watch Container Insights

1. 다음의 링크를 클릭하여 Cloud Watch Console로 이동합니다.[Amazon Cloud Watch Console](https://us-west-2.console.aws.amazon.com/cloudwatch/home?region=us-west-2)

    ![Alt](/images/cloudwatch/cloudwatch-console.png "view service status")

2. 콘솔로 이동을 하면 위와 같은 화면을 볼 수 있습니다. 화면 위의 빨간색 으로 표시 되어있는 부분을 각각 **Container Insights** 그리고 **3h**로 수정하여 원하는 시간 만큼의 메트릭을 확인 할 수 있도록 화면을 수정합니다.

    ![Alt](/images/cloudwatch/cloudwatch-console.png "view service status")


3. 다음으로는 아래의 화면처럼 좌측 상단의 드롭박스를 클릭하여 **ECS Clusters** 선택하고 Filters에서는 **ContainerHOL**을 선택하여 원하는 지표만 표시되도록 합니다. 그러면 아래의 화면ㅘ 같이 Cluster Level에서의 CPU/MEMORY Utilization이나 Network 트래픽 그리고 Container Instance의 Count를 확인을 할 수 있습니다.

    ![Alt](/images/cloudwatch/containerinsights-ecs.png "view service status")

4. 다음으로는 좌측 상단의 드롭박스를 클릭하여 **ECS Sevices** 선택하고 그다음 드롭 박스에서는 **ContainerHOL** 그리고 Filters에서는 **ContainerHOL-webapp-service**을 선택하여 ECS의 Service의 레벨에서의 지표를 확인하여 봅니다. 그러면 아래와 같이 Service 레벨에서의 큐레이트된 지표를 확인할 수 있고 아래의 화면에서는 Task별 평균 CPU 및 Memery사용율을 지표를 손쉽게 확인할 수 있습니다.

    ![Alt](/images/cloudwatch/container-insights-service-level.png "view service status")

5. 다음 장으로 넘어가서 Log Insights를 실습합니다.