---
title: "ECS Service를 위한 Application Load Balacer 생성하기"
date: 2020-01-22T09:46:32+09:00
draft: false
weight: 300
---

1. [https://console.aws.amazon.com/ec2/에서](https://console.aws.amazon.com/ec2/에서) Amazon EC2 콘솔을 엽니다.

2. 왼쪽 탐색 창의 로드 밸런싱에서 Load Balancer( 로드 밸런서 )를 선택합니다.

3. 왼쪽 상단의 Create Load Balancer(로드 밸런서 생성)버튼을 클릭합니다.

4. Select load balancer type 페이지에서 Application Load Balancer를 선택한 다음 Continue을 선택합니다.

5. 다음과 같이 Configure Load Balancer 페이지를 완료합니다. 나머지는 다 디폴트로 둡니다.

    - name: hol-alb
    - vpc: ContainerHol
    - Availability Zones: us-west-2a, us-west-2b 체크

6. Security Group: vpc에 연결된 디폴트 보안 그룹 선택하고 다음으로 넘어갑니다.

7. "Improve you load balancer's security. Your load balancer is not using secure listener" 라는 메시지가 출력되는데 무시하고 다음으로 넘어갑니다.

8. Configure Routing 섹션 은 다음과 같이 입력합니다. 나머지는 디폴트로 둡니다.
    - name: hol-tg-1
    - target type: IP

9. Advanced Health Check Setting를 클릭하고 다음 화면과 같이 입력합니다.
    - Healthy threshhold: 3
    - Interval : 6
  
     ![Alt](/public/images/alb/alb-advanced-check-setup.png "cloud9 afters")

    > 이렇게 인터벌을 줄이면 빠르게 ALB의 타켓을 헬스 체크할 수 있습니다. 실제 워크로드는 기동되는 시간을 고려하여 Healthy threshhold, Interval 등을 설정하는 것이 좋습니다.

10. Register Targets 은 생략하고 넘어갑니다.

11. Create 버튼을 눌러서 로드 밸런서를 생성합니다.