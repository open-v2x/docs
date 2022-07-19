#!/bin/sh


set_password() {
  read -p "Enter your install-environment-ip-adress: " ip
  read -p "Enter your redis root password: " redis_root
  read -p "Enter your mariadb1 root password: " mariadb1_root
  read -p "Enter your mariadb1 dandelion password: " mariadb1_dandelion
  read -p "Enter your emqx root password: " emqx_root
}

verify_input() {
  if [ ! -n "$ip" ] ;then
    echo "you have not input install-environment-ip-adress!"
    exit 1
  fi
  if [ ! -n "$redis_root" ] ;then
    echo "you have not input redis root password!"
    exit 1
  fi
  if [ ! -n "$mariadb1_root" ] ;then
    echo "you have not input mariadb1 root password!"
    exit 1
  fi
  if [ ! -n "$mariadb1_dandelion" ] ;then
    echo "you have not input mariadb1 dandelion password!"
    exit 1
  fi
  if [ ! -n "$emqx_root" ] ;then
    echo "you have not input emqx root password!"
    exit 1
  fi

}

set_system() {
  unalias cp 2> /dev/null
  alias docker-compose='docker compose'
}

verify_uninstall() {
  docker stop redis || true 2> /dev/null
  docker rm redis || true 2> /dev/null
  docker stop emqx || true 2> /dev/null
  docker rm emqx || true 2> /dev/null
  docker stop mariadb1 || true 2> /dev/null
  docker rm mariadb1 || true 2> /dev/null
  docker stop dandelion || true 2> /dev/null
  docker rm dandelion || true 2> /dev/null
  docker stop edgeview || true 2> /dev/null
  docker rm edgeview || true 2> /dev/null
  docker stop centerview || true 2> /dev/null
  docker rm centerview || true 2> /dev/null
  docker stop cerebrum || true 2> /dev/null
  docker rm cerebrum || true 2> /dev/null
  docker stop rse-simulator || true 2> /dev/null
  docker rm rse-simulator || true 2> /dev/null
  docker rmi openv2x/dandelion:latest || true 2> /dev/null
  docker rmi openv2x/cerebrum:latest || true 2> /dev/null
  docker rmi openv2x/edgeview:latest || true 2> /dev/null
  docker rmi openv2x/centerview:latest || true 2> /dev/null
  docker rmi openv2x/roadmocker:latest || true 2> /dev/null
}

set_env() {
  mkdir -pv /tmp/pre
  mkdir -pv /tmp/init
  mkdir -pv /tmp/service
  cp -f deploy/docker-compose-pre.yaml /tmp/pre/docker-compose-pre.yaml
  cp -f deploy/docker-compose-init.yaml /tmp/init/docker-compose-init.yaml
  cp -f deploy/docker-compose-service.yaml /tmp/service/docker-compose-service.yaml
  sed -i "s/127.0.0.1/$ip/" /tmp/service/docker-compose-service.yaml
  sed -i "s/redis12345/$redis_root/" /tmp/pre/docker-compose-pre.yaml
  sed -i "s/mysql@1234/$mariadb1_root/" /tmp/pre/docker-compose-pre.yaml
  sed -i "s/dandelion123/$mariadb1_dandelion/" /tmp/pre/docker-compose-pre.yaml
  sed -i "s/abc@1234/$emqx_root/" /tmp/pre/docker-compose-pre.yaml
  sed -i "s/abc@1234/$emqx_root/" /tmp/service/docker-compose-service.yaml
  sed -i "s/mysql@1234/$mariadb1_root/" /tmp/service/docker-compose-service.yaml
  sed -i "s/redis12345/$redis_root/" /tmp/service/docker-compose-service.yaml
  cp -rf deploy/edgeview /etc/
  cp -rf deploy/centerview /etc/
  cp -rf deploy/dandelion /etc/
  sed -i "s/redis12345/$redis_root/" /etc/dandelion/dandelion.conf
  sed -i "s/dandelion123/$mariadb1_dandelion/" /etc/dandelion/dandelion.conf
  sed -i "s/abc@1234/$emqx_root/" /etc/dandelion/dandelion.conf
  rm -rf /var/log/dandelion && mkdir -p /var/log/dandelion
  rm -rf /data && mkdir -pv /data
  cp -rf deploy/mysql /data/
  sed -i "s/dandelion123/$mariadb1_dandelion/" /data/mysql/init/init.sql
  touch /var/log/dandelion/dandelion.log
}

verify_mysql(){
  while true
  do
    databases=`docker exec mariadb1 mysql -uroot -p$mariadb1_root -e 'show databases;' 2> /dev/null`
    target="dandelion"
    result=$(echo $databases | grep "${target}")
    if [[ "$result" != "" ]]
    then
      break
    else
      sleep 3
    fi
  done
}

verify_install() {
  docker-compose -f /tmp/pre/docker-compose-pre.yaml up -d
  verify_mysql
  docker-compose -f /tmp/init/docker-compose-init.yaml up -d
  sleep 5
  docker rm dandelion_bootstrap || true
  docker-compose -f /tmp/service/docker-compose-service.yaml up -d
  printf "%40s\n" "$(tput setaf 4)
  openv2x has been installed successfully!
                                       ________           
  ____  ______    ____    ____ ___  __\_____  \ ___  ___ 
 /  _ \ \____ \ _/ __ \  /    \\  \/ / /  ____/ \  \/  / 
(  <_> )|  |_> >\  ___/ |   |  \\   / /       \  >    <  
 \____/ |   __/  \___  >|___|  / \_/  \_______ \/__/\_ \ 
        |__|         \/      \/               \/      \/ 
    repository: openv2x
  $(tput sgr0)"
}

{
  set_password
  verify_input
  verify_system
  verify_uninstall
  set_env
  verify_install
}
