# ECR 클러스터 생성하기

1. [https://console.aws.amazon.com/ecs/](https://console.aws.amazon.com/ecs/) 에서 Amazon ECS 콘솔을 엽니다.

2. 왼쪽 탐색 창에서 Clusters를 선택합니다.

3. 클러스터 페이지에서 Create Cluster (클러스터 생성) 를 선택합니다.

4. Select cluster template(클러스터 템플릿 선택)에서 **EC2 Linux + Networking** 를 선택한 후 다음 단계를 선택합니다.

5. 다음 세부항목에 대해서 입력을 합니다. 나머지는 다 디폴트로 내버려둡니다.

    - Cluster name: **ContainerHol**
    - Number of instances: **2**
    - VPC: **ContainerHol**
    - Subnet: **HolSubnetA, HolSubnetB**
    - Security Group: ContainerHol VPC 연결된 SecurityGroup
    - Container instance IAM role: **Create new role** 혹은 **ecsInstanceRole**

6. 항목을 다 입력했으면 Create 버튼을 누릅니다. 클러스터 생성이 완전히 완료가 되기 전가지는 브라우저의 해당 탭에서 다른 웹페이지로 이동하지 않습니다.

7. 생성이 완료되고 나면 상단의 View Cluster 버튼이 활성화 됩니다. 해당 버튼을 클릭하여 클러스터의 상태를 확인하는 패이지로 이동합니다.

8. ContainerHOL 클러스터의 대쉬보드 화면에서 각 탭을 눌러 현재 클러스터의 상태를 확인합니다. 다음과 같이 클러스터를 구성하는 ec2 인스턴스의 상태가 active면 정상적으로 생성된 것입니다.

    ![Alt](../images/ecs/view-cluster-status.png "generate git credential")

## [다음: Task Definition 작성하기](create-task-definition.md)

## [메인페이지로 돌아가기](../README.md)

## [ECR 에 도커 이미지를 위한 리포지토리 생성하기](create-ecr-repository.md)
