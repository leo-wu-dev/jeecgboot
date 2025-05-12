# 使用官方的 Nginx 镜像作为基础镜像
FROM nginx:alpine

# 删除默认的 Nginx 配置文件
RUN rm -rf /usr/share/nginx/html/*

# 复制本地的静态文件到容器中的 Nginx html 目录
COPY ./dist /usr/share/nginx/html

# 复制自定义的 Nginx 配置文件（可选）
# 如果你有自定义的 Nginx 配置，可以在这里复制
COPY ./nginx.conf /etc/nginx/nginx.conf

# 开放 80 端口
EXPOSE 80

# 启动 Nginx
CMD ["nginx", "-g", "daemon off;"]
