# ベースイメージ
FROM openjdk:11-jre-slim

# アプリケーションディレクトリを作成
WORKDIR /app

# プロジェクトのソースをコピー
COPY . .

# Gradleビルドを実行
RUN ./gradlew clean build

# ビルドされたJARファイルをコピー
COPY build/libs/*.jar app.jar

# アプリケーションを起動
CMD ["java", "-jar", "app.jar"]
