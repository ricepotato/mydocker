# alpine_nginx
alpine 에 nginx 설치 후 실행까지 !

## 사용법

build.sh 실행 하면 alpine_nginx:latest 이미지가 생성됨

run.sh 실행 하면 alpine_nginx container 로 들어감

/start_nginx.sh 실행하면 nginx 시작됨

host port 는 8088, nginx port 는 80으로 설정됨

build 전에 nginx.conf 변경하여 nginx 옵션 변경

## nginx command

start : nginx
stop : nginx -s stop
restart : nginx -s reload
check configuratio file : nginx -t

<table border="1" cellpadding="1" cellspacing="1" class="tbl1"> <tbody> <tr> <td>기동</td> <td>nginx</td> </tr> <tr> <td>정지</td> <td>nginx -s stop</td> </tr> <tr> <td>재기동</td> <td>nginx -s reload</td> </tr> <tr> <td>설정파일 체크</td> <td>nginx -t</td> </tr> <tr> <td>main 설정파일 위치</td> <td># cd /etc/nginx/</td> </tr> <tr> <td>각 서버용 설정파일 위치</td> <td># cd /etc/nginx/conf.d/</td> </tr> </tbody> </table>

## nginx options

<table border="1" cellpadding="1" cellspacing="1" class="tbl1"> <tbody> <tr> <td>-?, -h</td> <td>nginx 명령어의 도움팔 표시</td> </tr> <tr> <td>-v</td> <td>nginx 의 Version</td> </tr> <tr> <td>-V</td> <td>nginx를 make 했을때 컴파일러 또는 configure 옵션 표시</td> </tr> <tr> <td>-t</td> <td>nginx 설정파일의 타당성을 체크 <span style="color:#c0392b"><strong>( ※ 이옵션을 실행시는 nginx를 정지한 상태서 실행)</strong></span></td> </tr> <tr> <td>-q</td> <td>nginx설정파일 타당성체크<span style="color:#c0392b"><strong>(-t는 정상에러메세지 출력, -q는 에러메세지만 nginx정지후)</strong></span></td> </tr> <tr> <td colspan="1" rowspan="4">-s 시그널</td> <td>stop : 강제종료</td> </tr> <tr> <td>quit :&nbsp;실행중 request처리 종료하고 나서 nginx정지</td> </tr> <tr> <td>reload :&nbsp;설정파일 다시 읽어들임</td> </tr> <tr> <td>reopen :&nbsp;nginx재기동중에 로그파일을 다시 오픈한다.</td> </tr> <tr> <td>-c 설정파일</td> <td>지정한 설정파일로 nginx를 기동한다. (부하시험등에 사용...보통 사용안함)</td> </tr> <tr> <td>-g global디렉티스설정</td> <td>지정한 global디렉티브의 설정으로 nginx를 기동 (부하실험등...)</td> </tr> <tr> <td>-p prefix</td> <td>default=/usr/local/nginx/ &nbsp;</td> </tr> </tbody> </table>

https://emunhi.com/view/201812/22205100877?menuNo=10019
