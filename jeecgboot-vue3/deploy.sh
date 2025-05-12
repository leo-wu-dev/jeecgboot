appName="jeecgboot-vue3"

pnpm install

pnpm run build

docker build -t "$appName" .

docker image prune -f

docker stop "$appName"

docker rm -f "$appName"

docker run --name "$appName" -d -p 8981:80  --restart always  "$appName"
