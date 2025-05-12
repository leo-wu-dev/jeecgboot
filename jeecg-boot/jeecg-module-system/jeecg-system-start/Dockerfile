# 使用官方 OpenJDK 镜像作为基础镜像
FROM openjdk:17-ea-29

# 设置工作目录
WORKDIR /app

# 将编译好的 JAR 文件复制到容器中
COPY ruoyi-admin/target/app.jar /app/app.jar

# 暴露应用运行的端口（如果有需要的话）
EXPOSE 8080

# 设置容器启动时的命令
CMD ["java", "-jar", "/app/app.jar", "--spring.profiles.active=prod"]
