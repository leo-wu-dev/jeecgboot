appName="jeecgboot-vue3"

pnpm install --prefix ./jeecgboot-vue3

pnpm run build --prefix ./jeecgboot-vue3

docker build -t "$appName" ./jeecgboot-vue3

docker image prune -f

docker stop "$appName"

docker rm -f "$appName"

docker run --name "$appName" -d -p 8981:80  --restart always  "$appName"
