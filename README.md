# mydocker
my docker !

## 여기다 docker build, run script 등등 모아보자! 꺄르

alpine nginx


## docker image, container

### image 모두 삭제(실행중인 컨테이너 이미지 제외)
$ docker rmi -f $(docker images -a -q)

### 모든 container 삭제(실행중인 컨테이너 제외)
$ docker container prune

### 모든 container 정지
$ docker stop $(docker ps -a -q)

### dangling image 삭제
$ docker rmi $(docker imagaes -f "dangling=true" -q)

## docker volume

### 모든 volume 삭제
$ docker volume prune

## docker networks

