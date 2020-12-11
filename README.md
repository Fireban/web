# Serer Setup

```
//꼭 sudo su 후 (root계정으로) 실행해주세요.
chmod 744 init_sh.sh
./init_sh.sh
//에러 발생시 한번 더 실행해주고 DB와 Backend 설치 후 gunicorn restart 해주면 동작합니다.
```

# DB Setup
```
mysql -uroot -p
// mysql 접속
CREATE DATABASE fireban default character set utf8 collate utf8_unicode_ci;

// fireban database 생성
GRANT ALL PRIVILEGES ON fireban.* to fireban@'%' IDENTIFIED BY 'fireban12#$';

//fireban database 접속 계정 생성
```

# Back-End
```
cd /home/webmaster/fireban
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py createsuperuser
// 어드민 계정 생성 id, 이름, password 입력
service gunicorn restart
```

# Front-End
```
cd /home/webmaster/front/src/lib
vim config.js
```
API_END_POINT와 END_POINT 에 주소를 서버 주소 또는 도메인으로 수정
API_END_POINT에는 꼭 주소 뒤에 /api 입력
각 주소 입력부분 끝에 절대ㅗㄹ "/"를 넣지 않습니다.
저장 후,
```
cd /home/webmaster/front
yarn add package
yarn build -p
//노드 버전 에러 뜰텐데 무시하시면 됩니다.
```


# [IMPORTANT] Server Reboot
```
service gunicorn restart
// 꼭 서버 재식작시 실행해줘야 backend가 제대로 동작함.
```
