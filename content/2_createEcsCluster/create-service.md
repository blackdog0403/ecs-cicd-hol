---
title: "ECS Service를 생성하여 task를 배포하기"
date: 2020-01-22T09:46:32+09:00
draft: false
weight: 400
---

1. [https://console.aws.amazon.com/ecs/](https://console.aws.amazon.com/ecs/)에서 Amazon ECS 콘솔을 엽니다.

2. 왼쪽 탐색 창에서 Task Definitions를 선택한 후 서비스를 생성할 작업 **hol-webapp**을 선택합니다.

3. Task Definition Name : hol-webapp 페이지에서 서비스를 생성할 작업 정의의 revision을 클릭합니다.

4. Task Definition [Actions], [Create Service]를 선택합니다.

5. [Configure service] 페이지에서 다음의 항목을 아래와 같이 입력합니다. 나머지는 디폴트로 내버려 둡니다.

    - Launch type: EC2
    - Cluster: ContainerHOL
    - Service name: hol-webapp-service
    - Number of tasks: 2
    - Deployment type: Rolling update

6. 위의 항목을 입력하고 다음 버튼을 눌러 Configure Network 페이지에서 다음의 항목을 아래와 같이 입력합니다. 나머지는 디폴트로 내버려 둡니다.

    - Cluster VPC: ContainerHOL
    - Subnets: HolSubnetA, HolSubnetB
    - Security Groups: ContainerHOL VPC의 디폴트 Security Group 선택
    - Load balancer type: Application Load Balancer
    - Load balancer name: hol-alb

7. Container to load balance 항목 아래의 **Add to load balancer** 버튼을 클릭하여 아래와 같이 선택합니다.

    - Production listener port: 80:HTTP
    - Target group name: hol-tg-1

8. Next step 을 눌러 Set Auto Scaling 페이지로 가서 디폴트 설정으로 두고 Next step 버튼을 눌러서 review 페이지로 가서 입력한 설정을 확인해 봅니다.

9. Create Service 버튼을 눌러 다음 서비스를 생성합니다. 서비스 생성이 완료되기 전까지 화면 전환을 하지 않습니다.

10. View Service 버튼을 눌러 서비스의 task 상태를 확인합니다. 1분에서 2분을 기다리면 last status가 **RUNNING** 으로 변경된 것을 확인 할 수 있습니다.

    ![Alt](/images/ecs/view-service-status.png "view service status")

11. Task상태가 확인이 되면 Details 버튼을 눌러 Load Balancing 항목의 Target Group **hol-tg-1** 을 클립합니다.

    ![Alt](/images/ecs/view-service-detail.png "view service detail")

12. Target Group 의 Targets 탭을 눌러서 다음과 같이 **healthy** 상태인 것이 확인을 합니다.

    ![Alt](/images/ec2/view-target-status.png "view target status")

13. Target Group의 Description 탭을 눌러서 Load Balacer 항목의 **hol-alb**를 클릭합니다.

    ![Alt](/images/ec2/view-target-group.png "view target group")

14. Load Balacer 페이지로 이동하여 DNS name의 URL를 복사하여 웹브라우저의 주소창에 붙여놓고 접속합니다. 다음과 같이 화면이 뜨면 정상적으로 배포가 된 것 입니다.

    ![Alt](/images/ec2/view-result.png "view target group")