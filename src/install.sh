#!/bin/sh
set -e

unalias cp 2>/dev/null || true
alias docker-compose='docker compose'

set_env() {
  [[ ! -n "$external_ip" ]] && read -p "Enter your openv2x external ip: " external_ip
  [[ ! -n "$redis_root" ]] && read -p "Enter your redis root password: " redis_root
  [[ ! -n "$mariadb_root" ]] && read -p "Enter your mariadb root password: " mariadb_root
  [[ ! -n "$mariadb_dandelion" ]] && read -p "Enter your mariadb dandelion password: " mariadb_dandelion
  [[ ! -n "$emqx_root" ]] && read -p "Enter your emqx root password: " emqx_root

  echo "export external_ip=$external_ip"
  echo "export redis_root=$redis_root"
  echo "export mariadb_root=$mariadb_root"
  echo "export mariadb_dandelion=$mariadb_dandelion"
  echo "export emqx_root=$emqx_root"
}

verify_input() {
  if [[ ! -n "$external_ip" ]] ;then
    echo "you have not input openv2x external ip!"
    exit 1
  fi
  if [[ ! -n "$redis_root" ]] ;then
    echo "you have not input redis root password!"
    exit 1
  fi
  if [[ ! -n "$mariadb_root" ]] ;then
    echo "you have not input mariadb root password!"
    exit 1
  fi
  if [[ ! -n "$mariadb_dandelion" ]] ;then
    echo "you have not input mariadb dandelion password!"
    exit 1
  fi
  if [[ ! -n "$emqx_root" ]] ;then
    echo "you have not input emqx root password!"
    exit 1
  fi
}

verify_uninstall() {
  containers=(redis emqx mariadb dandelion edgeview centerview cerebrum rse-simulator)
  for i in ${containers[@]}; do
    docker stop $i 2>/dev/null || true
    docker rm $i 2>/dev/null || true
  done
}

convert() {
  redis_root_convert=${redis_root//\"/\\\\\"}
  redis_root_convert=${redis_root_convert//\'/\\\\\'}
  redis_root_convert=${redis_root_convert//\//\\\/}

  mariadb_root_convert=${mariadb_root//\"/\\\"}
  mariadb_root_convert=${mariadb_root_convert//\'/\\\\\'}
  mariadb_root_convert=${mariadb_root_convert//\//\\\/}
  mariadb_root_verify=${mariadb_root//\"/\\\"}
  mariadb_root_verify=${mariadb_root_verify//\'/\\\'}
  rm -rf /tmp/bashrc && touch /tmp/bashrc
  echo "export mariadb_root_verify=$mariadb_root_verify" > /tmp/bashrc
  source /tmp/bashrc

  mariadb_dandelion_convert=${mariadb_dandelion//\"/\\\"}
  mariadb_dandelion_convert=${mariadb_dandelion_convert//\'/\\\\\'}
  mariadb_dandelion_convert=${mariadb_dandelion_convert//\//\\\/}
  
  emqx_root_convert=${emqx_root//\"/\\\"}
  emqx_root_convert=${emqx_root_convert//\'/\\\\\'}
  emqx_root_convert=${emqx_root_convert//\//\\\/}
}

pre_install() {
  mkdir -pv /tmp/pre
  mkdir -pv /tmp/init
  mkdir -pv /tmp/service
  cp -f deploy/docker-compose-pre.yaml /tmp/pre/docker-compose-pre.yaml
  cp -f deploy/docker-compose-init.yaml /tmp/init/docker-compose-init.yaml
  cp -f deploy/docker-compose-service.yaml /tmp/service/docker-compose-service.yaml
  sed -i "s/external_ip/$external_ip/" /tmp/service/docker-compose-service.yaml
  sed -i "s/redis12345/$redis_root_convert/" /tmp/pre/docker-compose-pre.yaml
  sed -i "s/mysql@1234/$mariadb_root_convert/" /tmp/pre/docker-compose-pre.yaml
  sed -i "s/dandelion123/$mariadb_dandelion_convert/" /tmp/pre/docker-compose-pre.yaml
  sed -i "s/abc@1234/$emqx_root_convert/" /tmp/pre/docker-compose-pre.yaml
  sed -i "s/abc@1234/$emqx_root_convert/" /tmp/service/docker-compose-service.yaml
  sed -i "s/mysql@1234/$mariadb_root_convert/" /tmp/service/docker-compose-service.yaml
  sed -i "s/redis12345/$redis_root_convert/" /tmp/service/docker-compose-service.yaml
  cp -rf deploy/edgeview /etc/
  cp -rf deploy/centerview /etc/
  cp -rf deploy/dandelion /etc/
  sed -i "s/redis12345/$redis_root_convert/" /etc/dandelion/dandelion.conf
  sed -i "s/dandelion123/$mariadb_dandelion_convert/" /etc/dandelion/dandelion.conf
  sed -i "s/abc@1234/$emqx_root_convert/" /etc/dandelion/dandelion.conf
  rm -rf /var/log/dandelion && mkdir -p /var/log/dandelion
  rm -rf /openv2x/data && mkdir -pv /openv2x/data
  cp -rf deploy/mysql /openv2x/data/
  sed -i "s/dandelion123/$mariadb_dandelion_convert/" /openv2x/data/mysql/init/init.sql
  touch /var/log/dandelion/dandelion.log
}

verify_mysql(){
  while true
  do
    databases=`docker exec mariadb mysql -uroot -p$mariadb_root_verify -e 'show databases;' 2>/dev/null || true`
    target="dandelion"
    result=$(echo $databases | grep "${target}" || true)
    if [[ "$result" != "" ]]
    then
      break
    else
      sleep 3
    fi
  done
}

verify_bootstrap(){
  while true
  do
    info=`docker ps -a | grep dandelion_bootstrap 2>/dev/null`
    status="Exited (0)"
    result=$(echo $info | grep "${status}" || true)
    if [[ "$result" != "" ]]
    then
      break
    else
      sleep 3
    fi
  done
}

verify_install() {
  images=(dandelion cerebrum edgeview centerview roadmocker)
  for i in ${images[@]}; do
    docker pull openv2x/$i:latest
  done

  docker-compose -f /tmp/pre/docker-compose-pre.yaml up -d
  verify_mysql
  docker-compose -f /tmp/init/docker-compose-init.yaml up -d
  verify_bootstrap
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
    repository: https://github.com/open-v2x
    portal: https://openv2x.org

  OpenV2X Edge Portal (Edgeview): http://$external_ip
  OpenV2X Central Portal (Centerview): http://$external_ip:8080

  username: admin
  password: dandelion

  $(tput sgr0)"
}

{
  set_env
  verify_input
  convert
  verify_uninstall
  pre_install
  verify_install
}
