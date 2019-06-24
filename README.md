# CICD for ECS Hands On LAB

> **본 Hands on Lab은 oregon region을 기준으로 작성되었습니다. 실습을 하실 때 반드시 리전을 확인하기 바랍니다.**

## Prerequisites

본격적으로 실습을 시작하기에 앞서 준비작업이 필요합니다. 아래의 1,2번 항목을 차례로 따라서 실행하고 다시 이 페이지로 돌아옵니다.

1. [IAM 유저 생성하기](doc/create-iam-user.md)

2. [워크스페이스 생성하기](doc/create-a-workspace.md)

3. (선택사항) [워크스페이스를 위한 IAM 역할 생성하기](doc/create-an-iam-role-for-your-workspace.md)

4. (선택사항) [워크스페이스에 IAM 역할 추가하기](doc/attach-the-iam-role-to-your-workspace.md)

## Overall Archtecture

본 HOL통해서 아래와 같은 아키텍처를 구성합니다. 이번 실습을 통하여 AWS상의 VPC위에 EC2기반의 ECS 클러스터를 생성하고 nginx컨테이너를 ECS클러스터 위에 배포합니다. 이를 위해서 ECS클러스터를 위한 Task definition 및 Service 를 생성하고 Code Pipeline으로 파이프라인을 생성하여 지속적으로 소스를 빌드하고 배포합니다.

![Alt](images/overall-architecture.png "create pipe")

추가적으로 각 구성요소에 대한 상세한 내용을 알고 싶으시다면 다음의 리소소들을 참조해주세요.

- [What is AWS VPC?](https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html)
- [What is Elastic Load Balancing](https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/what-is-load-balancing.html)
- [What is Amazon Elastic Container Service?](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/Welcome.html)
- [What is Amazon Elastic Container Registry?](https://docs.aws.amazon.com/AmazonECR/latest/userguide/what-is-ecr.html)
- [What Is AWS CodePipeline?](https://docs.aws.amazon.com/codepipeline/latest/userguide/welcome.html)

## ECR repository 등록 및 ECS 클러스터 생성 Task Definition 등록하기 (1시간 ~ 1시간 30분 소요)

이 단락에서는 Elastic Container Registry 서비스를 이용하여 컨테이너 이미지들을 저장할 Image Registry를 등록하고 컨테니어를 배포할 ECS 클러스터를 생성합니다. ECS의 배포 단위인 Task에 맞춰서 Task Definition을 정의하고 그를 이용하여 ECS에 Task를 배포하는 Service를 정의합니다. 이를 통해서 nginx 웹서버를 ECS 클러스터상에 배포하여 실제로 동작을 확인합니다.

아래의 항목들을 차례대로 수행합니다.

1. [ECR 에 도커 이미지를 위한 리포지토리 생성하기](doc/create-ecr-repository.md)

2. [ECR 클러스터를 위한 VPC 생성하기](doc/create-vpc.md)

3. [ECS 클러스터 생성하기](doc/create-ecs-cluster.md)

4. [Task Definition 작성하기](doc/create-task-definition.md)

5. [Service에서 사용할 Application Load Balancer 생성하기](doc/create-alb.md)

6. [Service 작성하여 서비스 배포하기](doc/create-service.md)

## Code Commit, Code Build, Code Pipeline으로 CI/CD 파이프라인 구성하기 (1시간 ~ 1시간 30분 소요)

이 단락에서는 형상의 소스들을 지속적으로 배포하고 빌드하여 ECR에 푸쉬하고 ECR cluster 상의 task들을 지속적으로 배포하기 위한 파이프라인을 생성합니다. AWS의 완전 관리형 Git repository인 Code Commit에 형상 저장소를 만들고 지속적인 빌드를 위하여 Dokcerfile 및 buildspec.yml을 작성하여 형상에 커밋합니다. 그리고 Code Pipeline에서 생성한 파이프라인으로 앞에서 생성한 ECS의 클러스터상의 Service를 업데이트하여 지속적인 배포를 수행합니다.

 아래의 항목들을 차례대로 수행합니다.

1. [Code Commit에 Git Repository 생성하고 Cloud9에 형상 clone 하기](doc/create-codecommit-repo.md)

2. [Code Commit Repository에 Dockefile 및 buildspec.yaml 추가하기](doc/create-resource-for-build.md)

3. [Cope Pipeline을 생성하여 ECS에 지속적인 배포하기](doc/create-pipeline.md)

## [실습후 리소스 삭제하기](delete)

> 실습후 반드시 리소스들을 삭제합니다. 제대로 삭제를 하지 않는 다면 귀하의 계정으로 요금이 청구될 수 있습니다. 실습때 받은 credit이 있다면 등록을 해주시길 바랍니다.

1. ALB 삭제
2. Target Group 삭제
3. ECS 서비스 삭제
4. ECS Task Definition 삭제
5. ECS 클러스터 삭제
6. ECR 이미지 레지스트리 삭제
7. Code Pipeline 삭제
8. Code commit 리포지토리 삭제
9. Code build 프로젝트 삭제
10. Cloud9 워크스페이스 삭제
11. VPC 삭제
