---
title: "Docker 기초 실습하기"
date: 2020-01-22T09:46:32+09:00
draft: true
---

이 장에서는 가장 기초적인 도커 명령어들을 학습을 해보도록 할 예정입니다. 더 상세한 명령어를 원한다면 [docker 홈페이지](https://docs.docker.com/)에 가서 문서를 참조하시면서 더 상세히 보도록 합니다. 아래의 가이드를 읽어가면서 도커 명령어들을 하나씩 실행을 해보도록 합니다.

## Dockefile 준비하기

다음의  Cloud9의 터미널 창에서 실행하여 Dockerfile을 준비합니다. Dockerfile은 어떤 도커이미지에 대한 청사진이라고 이해를 하시면 됩니다.

다음의 명령어를 복사하여 Clood9 터미널의 bash 쉘에 붙여넣고 엔터를 입력합니다.

```bash
cat << EOF > Dockerfile
FROM nginx:latest
RUN  echo '<h1>Hello World Version 1</h1>' \
>> index.html
RUN cp /index.html /usr/share/nginx/html
EOF
```

## docker build 명령어로 도커 이미지 빌드하기

다음의 명령어는 현재 경로(.)에 있는 Dockerfile을 mynginx라는 이미지 명으로 빌드를 한다는 의미입니다. 따로 태그를 명시하지 않았기 때문에 태그는 **latest** 가 됩니다.

```bash
docker build -t mynginx .
```

## docker images 명령어로 호스트 머신에 있는 도커 이미지들 확인하기

다음의 명령어를 실행하면 도커 CLI를 실행한 Host Machine에 있는 docker images를 확인할 수 있습니다.

```bash
docker images
```

## docker search 어 도커 허브에 있는 이미지들 검색하기

호스트 머신이 docker hub 즉 퍼블릭 이미지 레포지토리에 접근이 가능하다면 아래의 명령어를 통해서 다양한 이미지를 검색할 수 있습니다. 우리는 nginx를 검색해보록 합니다.

```bash
docker search nginx
```

![Alt](/public/images/cloud9/cloud9-docker-search.png "cloud9 docker search")

## docker run 명령어로 도커 이미지 실행하기

아래의 명령어를 실행하면 호스트 머신의 8080포트에 컨테이너 포트 80을 매핑시켜 "mynginx"란 이름의 컨테이너를 실행합니다.  -d 옵션은 detached 즉 백그라운드에서 실행을 하라는 뜻입니다.

```bash
docker run -d -p 8080:80 --name mynginx mynginx
```

정상적으로 실행이 되었다면 에러 메시지는 출력이 되지 않고 "6af1b8015d5ab3f2e91597899713f886759ab2fbbdbdb31c4999ba5694e12da0" 와 같이 container id만 terminal에 출력됩니다.

## docker ps 명령어로 호스트 머신에서 실행중인 컨테이너 확인하기

```bash
docker ps
```

다음과 같은 화면을 볼 수 있습니다.

![Alt](/public/images/cloud9/cloud9-docker-ps.png "cloud9 afters")

## docker port 명령어로 컨테이너의 포트 연결 확인하기

현재 실행 중인 컨테이너가 어떤 포트를 사용하고 있는지 확인하고 싶다면 다음의 명령어를 실행합니다.

```bash
docker port mynginx
```

다음과 같은 결과를 확인하실 수 있습니다.

```bash
blackdog-dev:~/environment $ docker port mynginx
80/tcp -> 0.0.0.0:8080
```

호스트 머신(0.0.0.0)의 8080에 컨테이너의 80 포트가 연결이 되어있습니다. 호스트 머신에 8080에 접속하는 것이 컨테이너 포트의 80에 접속하는 것과 같습니다.

## Cloud9으로 개발중인 웹 어플리케이션 미리보기

아래의 화면처럼 상단의 Preview 메뉴를 클릭하여 8080포트로 기동한 도커 컨테이너에 접속해서 테스트를 해볼 수 있습니다.

![Alt](/public/images/cloud9/cloud9-preview.png "cloud9 afters")

## docker logs로 컨테이너의 로그 출력해서 보기

다음의 명령어를 실행하면 'mynginx' 컨테이너의 로그를 출력해서 추적할 수 있습니다.

```bash
docker logs -f mynginx
```

## docker exec 명령어로 컨테이너에 접속하기

다음의 명령어를 사용하면 컨테이너에 bash로 접속을 할 수 있습니다. -i 는 interactive, Keep STDIN open even if not attached란 의미이고 -t 옵션은 Allocate a pseudo-TTY를 의미합니다.

```bash
docker exec -it mynginx bash
```

컨테이너 안을 둘러보고 **exit** 명령어로 클라우드9 bash 쉘로 돌아옵니다.

## docker stop 명령어로 컨테이너 중지하기

다음의 명령어로 컨테이너 id 혹은 name을 파라미터로 던지면 실행중인 컨테이너를 중지할 수 있습ㄴ디ㅏ.

```bash
docker stop mynginx
```

## docker rm 명령어로 컨테이너 삭제하기

다음의 명령어로 컨테이너를 삭제할 수 있습니다. 삭제와 중지는 다른 개념입니다.

```bash
docker rm mynginx
```

## docker rmi 명령어로 도커 이미지 삭제하기

다음의 명령어로 호스트 머신에 있는 도커 이미지를 삭제할 수 있습니다. 이미지 레지스트리에 푸쉬를 하지 않았다면 해당 이미지는 다시 빌드하지 않는 이상 다시 실행을 할 수가 없게됩니다.

```bash
docker rmi mynginx:latest
```