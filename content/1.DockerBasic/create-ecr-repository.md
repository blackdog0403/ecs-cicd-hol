---
title: "ECR 리포지토리 생성하기"
date: 2020-01-22T09:46:32+09:00
draft: true
---

> 도커 이미지를 Amazon ECR에 푸시하려면 먼저 이를 저장할 리포지토리를 생성해야 합니다. AWS Management 콘솔 또는 AWS CLI 및 AWS SDK를 사용하여 Amazon ECR 리포지토리를 만들 수 있습니다.

## ECR 리포지토리에 생성하기

1. [https://console.aws.amazon.com/ecr/repositories](https://console.aws.amazon.com/ecr/repositories) 에서 Amazon ECR 콘솔을 엽니다.

2. 오른쪽 상단의 탐색 모음에서 리포지토리를 생성할 리전 US WEST (oregon) 를 선택합니다.

3. 탐색 창에서 Repositories를 선택합니다.

4. Repositories 페이지에서 Create repository를 선택합니다.

5. 리포지토리 구성에 리포지토리의 이름의 / 뒤에 **containerhol/webapphol** 라고 입력을 하고 리포지토리 생성을 선택합니다.

## ECR 리포지토리에 nginx 도커 이미지 푸쉬하기

1. 생성한 리포지토리를 선택하고 오른쪽 상단의 **View push commands(푸시 명령 보기)** 를 선택하여 새 리포지토리에 푸시하는 단계를 봅니다. 다음과 같은 화면을 볼 수 있습니다.

    ![Alt](/images/ecr/view-push-commands.png "generate git credential")

    위의 명령어들을 이용하여 직접 ECR 리포지토리에 nginx 도커 이미지를 푸쉬해보도록 합니다.

2. 앞에서 생성한 Cloud9의 워크스페이스에 접속하고 터미널 창을 엽니다. Cloud9 터미널 창에서 아래의 명령으를 통해서 ecr 레포지토리에 로그인을 합니다.

    > 아래의 명령어를 "$"문자까지 포함하여 그대로 복사해서 Cloud9의 터미널 창에 붙여넣습니다. 키보드 단축키를 사용해서 복사하여 붙여넣습니다.

    ```bash
    $(aws ecr get-login --no-include-email --region us-west-2)
    ```

3. 다음으로는 docker hub에서 cloud9의 워크스페이스에 nginx 도커이미지를 내려받습니다.

    ```bash
    docker pull nginx:latest
    ```

4. 내려받은 이미지의 tag를 변경합니다. 각자의 ecr 레포지토리 주소에 맞춰서 태그를 변경합니다.

    ```bash
    docker tag nginx:latest xxxxxxxxxxxx.dkr.ecr.us-west-2.amazonaws.com/containerhol/webapphol:latest
    ```

5. 정상적으로 테그를 생성하였다면 다음과 같은 이미지를 앞에서 생성한 여러분의 ecr 리포지토리에 푸쉬합니다.

    ```bash
    docker push xxxxxxxxxxxx.dkr.ecr.us-west-2.amazonaws.com/containerhol/webapphol:latest
    ```

    다음과 같은 메시지가 출력이 되면 정상적으로 ecr 리포지토리에 이미지가 푸쉬된 것입니다.

    ```bash
    The push refers to repository [596560085204.dkr.ecr.us-west-2.amazonaws.com/containerhol/webapphol]
    d7acf794921f: Pushed
    d9569ca04881: Pushed
    cf5b3c6798f7: Pushed
    latest: digest: sha256:079aa93463d2566b7a81cbdf856afc6d4d2a6f9100ca3bcbecf24ade92c9a7fe size: 948
    ```