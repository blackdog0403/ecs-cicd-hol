---
title: "AWS 계정 생성하기"
date: 2020-01-22T09:46:32+09:00
draft: true
weight: 1
---

1. AWS 계정을 가지고 있지 않다면 :[클릭하여 AWS 계정을 만듭니다](https://aws.amazon.com/getting-started/)

2. AWS 계정을 가지고 있다면 AWS 계정에 대한 관리자 권한이 있는 IAM 사용자로서 나머지 작업장 단계를 수행합니다: [실습을 위하여 새로운 IAM 사용자를 만듭니다](https://console.aws.amazon.com/iam/home?#/users$new)

3. 사용자 상세 내역을 입력합니다.

    ![Alt](iam/iam-1-create-user.png "Title")

4. AdministratorAccess IAM 정책츨 추가합니다.

     ![Alt](iam/iam-2-attach-policy.png "add policy")

5. Create User 버튼을 클릭해서 사용자를 생성합니다.

     ![Alt](iam/iam-3-create-user.png "create user")

6. 로그인을 위한 URL을 메모해둡니다.

     ![Alt](iam/iam-4-save-url.png "create user")
