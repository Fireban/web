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
각 주소 입력부분 끝에 절대 "/"를 넣지 않습니다.
```
//예시
//기존
export const API_END_POINT = "http://3.16.111.90/api";
export const END_POINT = "http://3.16.111.90";

//변경후
export const API_END_POINT = "http://www.fireban.kr/api";
export const END_POINT = "http://www.fireban.kr";

```

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

# KAKAO MAP API
1. https://developers.kakao.com 접속
2. 개발자 등록 및 앱생성
3. 웹 플랫폼 추가: 앱 선택 -> 설정 -> 일반 -> 플랫폼추가 -> 웹 선택 후 추가
4. 사이트 도메인 등록 (웹 플랫폼 선택), 사이트 도메인 등록 (ex> http://www.fireban.kr, http://123.456.789.123)
5. 페이지 상단의 [JAVASCRIPT 키]를 지도 API의 appKey로 사용하니 복사
```
cd /home/webmaster/front/public
vim index.html
//33번째줄     src="//dapi.kakao.com/v2/maps/sdk.js?appkey=앱키입력&libraries=services"></script>
```
앱키 변경 후
```
cd /home/webmaster/front
yarn build -p
```
