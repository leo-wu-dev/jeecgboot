appName="jeecg-system-start"
docker build -t "$appName" ./jeecg-boot/jeecg-module-system/jeecg-system-start/
# 判断容器是否存在
container_id=$(docker ps -a --filter "name=${appName}" -q)
if [ -n "$container_id" ]; then
  # 容器存在，停止并删除
  echo "Stopping container ${appName}..."
  docker stop ${appName}
  echo "Removing container ${appName}..."
  docker rm ${appName}
else
  echo "Container ${appName} does not exist."
fi
docker run --name "$appName" -d --restart always -p 9980:8080 "$appName"
docker image prune -f
