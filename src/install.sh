#!/bin/sh

if [ ! -n "$1" ] ;then
    echo "you have not input install-environment-ip-adress!"
    exit 1
fi

unalias cp
alias docker-compose='docker compose'

mkdir -pv /tmp/pre
mkdir -pv /tmp/service
cp -f deploy/docker-compose-pre.yaml /tmp/pre/docker-compose-pre.yaml
cp -f deploy/docker-compose-service.yaml /tmp/service/docker-compose-service.yaml

sed -i "s/127.0.0.1/$1/" /tmp/service/docker-compose-service.yaml

docker stop redis || true
docker rm redis || true
docker stop emqx || true
docker rm emqx || true
docker stop mariadb1 || true
docker rm mariadb1 || true
docker stop dandelion || true
docker rm dandelion || true
docker stop edgeview || true
docker rm edgeview || true
docker stop centerview || true
docker rm centerview || true
docker stop cerebrum || true
docker rm cerebrum || true
docker stop rse-simulator || true
docker rm rse-simulator || true
docker rmi openv2x/dandelion:latest || true
docker rmi openv2x/cerebrum:latest || true
docker rmi openv2x/edgeview:latest || true
docker rmi openv2x/centerview:latest || true
docker rmi openv2x/roadmocker:latest || true

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
