#!/bin/sh

if [ ! -n "$1" ] ;then
    echo "you have not input fixip!"
    exit 1
fi

mkdir -pv /tmp/pre
mkdir -pv /tmp/service
cp -f deploy/docker-compose-pre.yaml /tmp/pre/docker-compose-pre.yaml
cp -f deploy/docker-compose-service.yaml /tmp/service/docker-compose-service.yaml

sed -i "s/127.0.0.1/$1/" /tmp/service/docker-compose-service.yaml
docker stop edgeview
docker rm edgeview
docker-compose -f /tmp/pre/docker-compose-pre.yaml stop
docker-compose -f /tmp/pre/docker-compose-pre.yaml rm -f
docker-compose -f /tmp/service/docker-compose-service.yaml stop
docker-compose -f /tmp/service/docker-compose-service.yaml rm -f
docker rmi openv2x/dandelion:latest || true
docker rmi openv2x/cereburm:latest || true
docker rmi openv2x/edgeview:latest || true
docker rmi openv2x/centerview:latest || true

cp -rf deploy/edgeview /etc/
cp -rf deploy/centerview /etc/
cp -rf deploy/dandelion /etc/

rm -rf /var/log/dandelion && mkdir -p /var/log/dandelion
touch /var/log/dandelion/dandelion.log

docker-compose -f /tmp/pre/docker-compose-pre.yaml up -d
sleep 10
docker exec mariadb1 mysql -uroot -pabc@1234 -e "CREATE DATABASE IF NOT EXISTS dandelion DEFAULT CHARACTER SET utf8mb4 DEFAULT COLLATE utf8mb4_general_ci;"
docker exec mariadb1 mysql -uroot -pabc@1234 -e "GRANT ALL PRIVILEGES ON dandelion.* TO 'dandelion'@'localhost' IDENTIFIED BY 'dandelion123';"
docker exec mariadb1 mysql -uroot -pabc@1234 -e "GRANT ALL PRIVILEGES ON dandelion.* TO 'dandelion'@'%'  IDENTIFIED BY 'dandelion123';"

docker rm dandelion_bootstrap || true

docker-compose -f /tmp/service/docker-compose-service.yaml up -d