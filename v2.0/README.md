## DIR v2.0 
- v1.0 개선사항
  - 각 서버들마다 프로젝트를 빌드
  - 비트버킷 파이프라인 실행시간 단축을 위해 도커 컨테이너 내부에서 빌드 후 배포 

- server settings
  - v1.0과 동일

- pipeline settings
  1. when push source code for master branch, pipeline execution
  2. parallel execution : load balancing server deployment
  3. sh파일이 아닌 파이프라인 실행 내에서 env 파일 생성
  4. nginx symbolic link 로 도메인 연결 포트 변경

