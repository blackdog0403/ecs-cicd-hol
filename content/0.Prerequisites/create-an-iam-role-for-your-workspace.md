---
title: "워크스페이스에 IAM 역할 생성하기"
date: 2020-01-22T09:46:32+09:00
draft: true
weight: 150
---

## IAM 역활 생성하기

1. 이 [링크를 클릭하여 Administrator Access 를 가진 IAM 역할을 생성합니다.](https://console.aws.amazon.com/iam/home#/roles$new?step=review&commonUseCase=EC2%2BEC2&selectedUseCase=EC2&policies=arn:aws:iam::aws:policy%2FAdministratorAccess)

2. AWS service 와 EC2 가 선택된 것을 확인하고 권한을 확하기 위해서 Next 버튼을 클릭합니다.

3. AdministratorAccess 가 체크된 것을 확인하고 Next 버튼을 클릭합니다.

4. Tag 입력은 생력합니다. 바로 리뷰를 위해서 Next 버튼을 누릅니다.

5. Name에 **containerhol-admin** 을 입력하고 Create Role 버튼을 누릅니다.

     ![Alt](/images/iam/create-role.png "cloud9 afters")
