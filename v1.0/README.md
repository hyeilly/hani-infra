## DIR v1.0 
- server settings
1. nginx/enable-upstream.conf 에서 도메인 연결 시 연결되는 기본 설정 - symbolic link
2. pm2/ecosystem.config.js 프로세스 실행

- pipeline settings
1. when push source code for master branch, pipeline execution
2. parallel execution : load balancing server deployment
3. rsync deploy start
4. env 파일을 생성하는 sh 파일 실행. ENV_VARS로 비트버킷 내 선언한 변수를 가져와 사용
5. 프론트엔드 코드를 빌드하는 sh 파일 실행
