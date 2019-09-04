# ECS 용 VPC 환경 생성

## VPC 생성하기

1. AWS 관리 콘솔에서 접속합니다.
2. VPC에 접속합니다.
3. 네비게이션 메뉴에서 your VPCs를 선택하고 Create VPC 버튼을 클릭합니다.
4. Create VPC 화면에서 다음과 같이 입력한 후 Create 버튼을 클릭합니다
    - Name tag: **ContainerHol**
    - IPv4 CIDR block: **10.0.0.0/16**

### Internet Gateway 생성하고 VPC에 연결하기

1. 네비게이션 메뉴에서 Internet Gateways를 선택하고 Create internet gateway를 클릭합니다.
    - Name tag: **ContainerIGW**
2. 생성된 Intenet Gateway를 선택하고 Actions 버튼을 클릭한 후 Attach to VPC를 선택합니다.
3. VPC에서는 ContainerHol 선택하고 Attach 버튼을 클릭합니다.

### Subnet 생성하기

1. 네비게이션 메뉴에서 Subnets을 선택하고 Create subnet을 클릭합니다.
2. Create subnet 화면에서 다음과 같이 입력한 후 Create 버튼을 클릭합니다:
    - Name tag: HolSubnetA
    - VPC: ContainerHol
    - Availability Zone: us-west-2a
    - IPv4 CIDR block: 10.0.0.0/24
3. Create subnet 화면에서 다음과 같이 입력한 후 Create 버튼을 클릭합니다:
    - Name tag: HolSubnetB
    - VPC: ContainerHol
    - Availability Zone: us-west-2b
    - IPv4 CIDR block: 10.0.1.0/24

### Route table 설정하기

1. 네비게이션 메뉴에서 Route Table을 클릭한 후 **ContainerHol** VPC의 Route Table을 선택하고, 하단에서 Routes 탭을 클릭합니다.

2. Edit routes 버튼을 클릭한 후 다음 화면에서 Add Route 버튼을 클릭합니다.
3. 다음과 같이 입력한 후 Save 버튼을 클릭합니다:
    - Destination: **0.0.0.0/0**
    - Target: **ContainerIGW**

### Security Group 설정하기

1. 네비게이션 메뉴에서 Security Groups를 선택합니다.
2. Security Group 목록에서 ContainerHol VPC의 Default Security Group을 선택합니다.
3. 화면 하단에서 Inbound Rules를 선택한 후 Edit rules 버튼을 클릭합니다.
4. Add rule을 누르고 아래 2개의 rule을 입력합니다:
    - Type: HTTP
    - Port Range: 80
    - Source: 0.0.0.0/0
    - Type: Custom TCP Rule
    - Port Range: 8080
    - Source: 0.0.0.0/0

## [다음: ECS 클러스터 생성하기](create-ecs-cluster.md)

## [메인페이지로 돌아가기](../README.md)

## [ECR 에 도커 이미지를 위한 리포지토리 생성하기](create-ecr-repository.md)
