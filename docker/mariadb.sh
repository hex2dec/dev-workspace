docker run -d \
  -p 3306:3306 \
  --name mariadb \
  -e MYSQL_ROOT_PASSWORD=hex2dec \
  "docker.io/library/mariadb:10.3.20"
