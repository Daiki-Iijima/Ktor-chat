# ベースイメージ
FROM openjdk:11-jre-slim

# アプリケーションディレクトリを作成
WORKDIR /app

# Gradleタスクを実行してビルドを確認
COPY . .
RUN ./gradlew clean build

# アーティファクトをコピー
COPY build/libs/ktor-chat-app.jar app.jar

# アプリケーションを起動
CMD ["java", "-jar", "app.jar"]