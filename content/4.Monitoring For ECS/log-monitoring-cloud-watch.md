---
title: "Cloud Watch Container Insights로 로그 분석하기"
date: 2020-01-22T09:46:32+09:00
draft: false
weight: 200
---

## Cloud Watch Log Insights

1. 이전 챕터에서 서비스 레벨 모니터링 화면의 하단부에서 **hol-webpp** 중 하나의 task를 체크하고 오른쪽 상단의 Action 버튼을 누른뒤에 **View application log 버튼을 누릅니다** 

    ![Alt](/images/cloudwatch/click-view-applicatoin-log.png "view service status")

2. 새로운 창이 열리며 아래와 같은 화면이 보입니다. select log group 버튼을 클릭하여 **/aws/ecs/containerinsights/ContainerHOL/performance** 로그 그룹을 선택합니다.

    ![Alt](/images/cloudwatch/select-log-group.png "view service status")


3. 로그 그룹을 선택하고 **Run query** 버튼을 누르면 아래와 같이 로그를 검색하여 출력할 수 있습니다. 오른쪽 상단의 **Queries** 버튼을 클릭하여 샘플쿼리들을 사용할 수 있습니다.

    ![Alt](/images/cloudwatch/log-result.png "view service status")

4. 다음은 5분간 발생한 exception을 카운트하는 쿼리 예제입니다. 다음과 같은 쿼리를 응용하여 40x 에러 혹은 50x 에러등을 쿼리하여 어플리케이션의 상태를 손쉽게 확인 가능합니다.(현재 테스크에서 에러가 발생하지 않기 때문에 에러는 검색되지 않습니다.)

    ```sql
    filter @message like /Exception/
    | stats count(*) as exceptionCount by bin(5m)
    | sort exceptionCount desc
    ```
5. 아래 화면의 처럼 결과를 csv 파일 형식으로 출력을 하거나 Cloud Watch Dashboard에 추가하여 바로 확인도 가능합니다.

     ![Alt](/images/cloudwatch/additionalfeature.png "view service status")

6. 실습을 완료하였습니다.

