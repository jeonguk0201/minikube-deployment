# 베이스 이미지로 OpenJDK 17 사용 
FROM openjdk:17-jdk-slim

# 작업 디렉터리 설정
WORKDIR /step08k8s

# JAR 파일을 /step08k8s 디렉터리로 복사
COPY HelloApp-0.0.1-SNAPSHOT.jar HelloApp.jar

# 애플리케이션을 실행하는 명령어
ENTRYPOINT ["java", "-jar", "HelloApp.jar"]
