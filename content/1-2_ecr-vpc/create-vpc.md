---
title: "ECS 용 VPC 환경 생성"
date: 2020-01-22T09:46:32+09:00
draft: false
---

## Cloud Formation Template을 활용한 ECS용 VPC 생성

본격적으로 Amazon ECS를 이용하여 클러스터를 구축하고 컨테이너라이제이션 된 앱을 배포하기 전에 IAC (Infrastructure As Code ) 서비스인 Aws Cloud Formation을 이용하여 Amazon ECS 클러스터를 배포하기 위한 VPC를 생성합니다. ECS 클러스터 셍상과 그 외 다른 설정 역시 Cloud formation으로 구성을 할 수 있지만 실습을 목적으로 불필요한 부분만 Cloud Foramtation으로 작성을 하도록 구성하였습니다.


| Launch template |  |
| ------ |:------:|
| VPC For Amazon ECS | [![Launch Stack](https://cdn.rawgit.com/buildkite/cloudformation-launch-stack-button-svg/master/launch-stack.svg)](https://console.aws.amazon.com/cloudformation/home?region=us-west-2#/stacks/new?stackName=ContainerHOL&templateURL=https://s3.ap-northeast-2.amazonaws.com/containerhero.io/template/vpc-ecs-cfn.yaml) |

1. 위 테이블의 버튼을 클릭하여 아래와 같은 Cloud Formation 화면이 뜨는지 확인합니다. 리전이 정상적으로 **us-west-2**로 떠 있는지 확인을 하도록 합니다.

    ![Alt](/images/cloudformation/cfn-console.png "cloud formation")

2. 위의 화면을 확인하였으면 next 버튼을 눌러서 다음 화면으로 진행합니다.

    ![Alt](/images/cloudformation/cfn-console-parameter.png "cloud formation")

3. 위의 화면을 확인하고 디폴트 값은 변경하지 않고 next 버튼을 눌러서 다음으로 진행합니다.

4. Configure stack options 및 Advanced options 역시 손대지 않고 next 버튼을 눌러서 다음화면으로 진행한 다음 화면을 아래쪽으로 스크롤하여서 **create-stack** 버튼을 눌러서 VPC를 생성합니다. 

    ![Alt](/images/cloudformation/cfn-console-stack-on-progress.png "cloud formation")

5. 정상적으로 진행을 했으면 위와 같은 화면을 볼 수 있습니다. status의 상태를 보면 **CREATE IN PROGRESS** 로 아직 스택의 리소스들을 생성중임을 확인할 수 있습니다. 

    ![Alt](/images/cloudformation/cfn-console-created.png "cloud formation")

6. 오른쪽 상단의 새로 고침 버튼을 누르면서 스택이 완성되길 기다리면 위와 화면과 같이 **CREATE_COMPLETE** 상태가 된 것을 확인할 수 있습니다. **Outputs* Tab을 선택하여 어떤 리소스들이 생성됐는지 확인을 해봅니다.


