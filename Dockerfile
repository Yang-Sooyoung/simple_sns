# Java 17 기반 이미지 사용
FROM eclipse-temurin:17-jdk

# 작업 디렉토리 설정
WORKDIR /app

# 모든 프로젝트 파일 복사
COPY . .

# 빌드 실행
RUN chmod +x gradlew && ./gradlew build

# 앱 실행 (JAR 파일 경로 주의)
CMD ["java", "-Dserver.port=$PORT", "-jar", "build/libs/simple-sns-0.0.1-SNAPSHOT.jar"]
