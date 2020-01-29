---
title: "Cloud9 워크스페이스 생성하기"
date: 2020-01-22T09:46:32+09:00
draft: true
weight: 140
---

> **Cloud9 워크스페이스는 루트 계정 사용자가 아니라 관리자 권한을 가진 IAM 사용자가 생성해야 합니다. 루트 계정 사용자가 아닌 IAM 사용자로 로그인했는지 확인하세요.**
>
> **클라우드 9 도메인에 대해 Ad blocker나 자바스크립트 해제기 및 추적 차단기가 작동되면 워크스페이스에 연결하는데 영향을 끼칠 수 있습니다. Cloud9에는 타사 쿠키가 필요하여 도메인을 [화이트리스트로 만들 수 있습니다.](https://docs.aws.amazon.com/cloud9/latest/user-guide/troubleshooting.html#troubleshooting-env-loading)**

1. 이 실습은 seoul region을 활용해서 이루어 질 것 입니다. 다음의 링크로 이동하여 Cloud9 워크 스페이스를 생성합니다.

    [https://us-west-2.console.aws.amazon.com/cloud9/home?region=ap-northeast-2](https://us-west-2.console.aws.amazon.com/cloud9/home?region=ap-northeast-2)

2. Create environment 버튼을 클릭합니다.
3. Name 에 containerhol 등과 같은 형식으로 입력합니다. 다른 항목은 디폴트로 내버려둡니다.
4. 워크스페이스 생성이 되면 welcome 탭을 닫고 새로운 터미널을 열어서 개발 환경을 커스터 마이징 합니다.

     ![Alt](/public/images/cloud9/c9before.png "cloud9 before")

5. 여러분의 워크스페이스는 다음과 같아 보여야합니다.:

     ![Alt](/public/images/cloud9/c9after.png "cloud9 afters")
