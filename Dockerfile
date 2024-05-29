# ベースイメージ
FROM openjdk:11-jre-slim

# アプリケーションディレクトリを作成
WORKDIR /app

# アーティファクトをコピー
COPY build/libs/ktor-chat-app.jar app.jar

# アプリケーションを起動
CMD ["java", "-jar", "app.jar"]
