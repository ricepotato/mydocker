# alpine_nginx
alpine 에 nginx 설치 후 실행까지 !

## 사용법

build.sh 실행 하면 alpine_nginx:latest 이미지가 생성됨

run.sh 실행 하면 alpine_nginx container 로 들어감

/start_nginx.sh 실행하면 nginx 시작됨

host port 는 8088, nginx port 는 80으로 설정됨

build 전에 nginx.conf 변경하여 nginx 옵션 변경