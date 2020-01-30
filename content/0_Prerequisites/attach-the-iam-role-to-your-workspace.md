---
title: "워크스페이스에 IAM 역할 추가하기"
date: 2020-01-22T09:46:32+09:00
draft: true
weight: 160
---

## (선택사항) IAM 역활을 Cloud9 EC2 Instance에 추가하기

1. 다음의 [링크를 클릭하여](https://console.aws.amazon.com/ec2/v2/home?#Instances:tag:Name=aws-cloud9-.*container.*;sort=desc:launchTime) Cloud9 EC2 인스턴스틀 찾습니다.
2. 
3. 인스턴스를 선택하고  Actions / Instance Settings / Attach/Replace IAM Role 을 차례대로 선택합니다.

     ![Alt](/public/images/iam/intance-role.png "cloud9 afters")

4. IAR role 항목 오른쪽의 드롭 다운 버튼을 눌러서 **containerhol-admin**을 선택하고 apply 버튼을 누릅니다.

     ![Alt](/public/images/iam/attach-role.png "cloud9 afters")

