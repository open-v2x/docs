#!/bin/sh
set -e

unalias cp 2>/dev/null || true
alias docker-compose='docker compose'

set_env() {
  [[ ! -n "$OPENV2X_EXTERNAL_IP" ]] && read -p "Enter your openv2x external ip: " OPENV2X_EXTERNAL_IP
  [[ ! -n "$OPENV2X_REDIS_ROOT" ]] && read -p "Enter your redis root password: " OPENV2X_REDIS_ROOT
  [[ ! -n "$OPENV2X_MARIADB_ROOT" ]] && read -p "Enter your mariadb root password: " OPENV2X_MARIADB_ROOT
  [[ ! -n "$OPENV2X_MARIADB_DANDELION" ]] && read -p "Enter your mariadb dandelion password: " OPENV2X_MARIADB_DANDELION
  [[ ! -n "$OPENV2X_EMQX_ROOT" ]] && read -p "Enter your emqx root password: " OPENV2X_EMQX_ROOT

  echo "export OPENV2X_EXTERNAL_IP=$OPENV2X_EXTERNAL_IP"
  echo "export OPENV2X_REDIS_ROOT=$OPENV2X_REDIS_ROOT"
  echo "export OPENV2X_MARIADB_ROOT=$OPENV2X_MARIADB_ROOT"
  echo "export OPENV2X_MARIADB_DANDELION=$OPENV2X_MARIADB_DANDELION"
  echo "export OPENV2X_EMQX_ROOT=$OPENV2X_EMQX_ROOT"
}

convert() {
  REDIS_ROOT_CONVERT=${OPENV2X_REDIS_ROOT//\"/\\\\\"}
  REDIS_ROOT_CONVERT=${REDIS_ROOT_CONVERT//\'/\\\\\'}
  REDIS_ROOT_CONVERT=${REDIS_ROOT_CONVERT//\//\\\/}

  MARIADB_ROOT_CONVERT=${OPENV2X_MARIADB_ROOT//\"/\\\"}
  MARIADB_ROOT_CONVERT=${MARIADB_ROOT_CONVERT//\'/\\\\\'}
  MARIADB_ROOT_CONVERT=${MARIADB_ROOT_CONVERT//\//\\\/}
  MARIADB_ROOT_VERIFY=${OPENV2X_MARIADB_ROOT//\"/\\\"}
  MARIADB_ROOT_VERIFY=${MARIADB_ROOT_VERIFY//\'/\\\'}
  rm -rf /tmp/bashrc && touch /tmp/bashrc
  echo "export MARIADB_ROOT_VERIFY=$MARIADB_ROOT_VERIFY" > /tmp/bashrc
  source /tmp/bashrc

  MARIADB_DANDELION_CONVERT=${OPENV2X_MARIADB_DANDELION//\"/\\\"}
  MARIADB_DANDELION_CONVERT=${MARIADB_DANDELION_CONVERT//\'/\\\\\'}
  MARIADB_DANDELION_CONVERT=${MARIADB_DANDELION_CONVERT//\//\\\/}

  EMQX_ROOT_CONVERT=${OPENV2X_EMQX_ROOT//\"/\\\"}
  EMQX_ROOT_CONVERT=${EMQX_ROOT_CONVERT//\'/\\\\\'}
  EMQX_ROOT_CONVERT=${EMQX_ROOT_CONVERT//\//\\\/}
}


verify_input() {
  if [[ ! -n "$OPENV2X_EXTERNAL_IP" ]] ;then
    echo "you have not input openv2x external ip!"
    exit 1
  fi
  if [[ ! -n "$OPENV2X_REDIS_ROOT" ]] ;then
    echo "you have not input redis root password!"
    exit 1
  fi
  if [[ ! -n "$OPENV2X_MARIADB_ROOT" ]] ;then
    echo "you have not input mariadb root password!"
    exit 1
  fi
  if [[ ! -n "$OPENV2X_MARIADB_DANDELION" ]] ;then
    echo "you have not input mariadb dandelion password!"
    exit 1
  fi
  if [[ ! -n "$OPENV2X_EMQX_ROOT" ]] ;then
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

pre_install() {
  mkdir -pv /tmp/pre
  mkdir -pv /tmp/init
  mkdir -pv /tmp/service
  cp -f deploy/docker-compose-pre.yaml /tmp/pre/docker-compose-pre.yaml
  cp -f deploy/docker-compose-init.yaml /tmp/init/docker-compose-init.yaml
  cp -f deploy/docker-compose-service.yaml /tmp/service/docker-compose-service.yaml
  sed -i "s/external_ip/$OPENV2X_EXTERNAL_IP/" /tmp/service/docker-compose-service.yaml
  sed -i "s/redis12345/$REDIS_ROOT_CONVERT/" /tmp/pre/docker-compose-pre.yaml
  sed -i "s/mysql@1234/$MARIADB_ROOT_CONVERT/" /tmp/pre/docker-compose-pre.yaml
  sed -i "s/dandelion123/$MARIADB_DANDELION_CONVERT/" /tmp/pre/docker-compose-pre.yaml
  sed -i "s/abc@1234/$EMQX_ROOT_CONVERT/" /tmp/pre/docker-compose-pre.yaml
  sed -i "s/abc@1234/$EMQX_ROOT_CONVERT/" /tmp/service/docker-compose-service.yaml
  sed -i "s/mysql@1234/$MARIADB_ROOT_CONVERT/" /tmp/service/docker-compose-service.yaml
  sed -i "s/redis12345/$REDIS_ROOT_CONVERT/" /tmp/service/docker-compose-service.yaml
  cp -rf deploy/edgeview /etc/
  cp -rf deploy/centerview /etc/
  cp -rf deploy/dandelion /etc/
  sed -i "s/redis12345/$REDIS_ROOT_CONVERT/" /etc/dandelion/dandelion.conf
  sed -i "s/dandelion123/$MARIADB_DANDELION_CONVERT/" /etc/dandelion/dandelion.conf
  sed -i "s/abc@1234/$EMQX_ROOT_CONVERT/" /etc/dandelion/dandelion.conf
  rm -rf /var/log/dandelion && mkdir -p /var/log/dandelion
  rm -rf /openv2x/data && mkdir -pv /openv2x/data
  cp -rf deploy/mysql /openv2x/data/
  sed -i "s/dandelion123/$MARIADB_DANDELION_CONVERT/" /openv2x/data/mysql/init/init.sql
  touch /var/log/dandelion/dandelion.log
}

verify_mysql(){
  while true
  do
    databases=`docker exec mariadb mysql -uroot -p$MARIADB_ROOT_VERIFY -e 'show databases;' 2>/dev/null || true`
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
    docker pull openv2x/$i:albany
  done

  args="-f /tmp/pre/docker-compose-pre.yaml up -d"
  docker-compose $args || docker compose $args
  verify_mysql
  args="-f /tmp/init/docker-compose-init.yaml up -d"
  docker-compose $args || docker compose $args
  verify_bootstrap
  docker rm dandelion_bootstrap || true
  args="-f /tmp/service/docker-compose-service.yaml up -d"
  docker-compose $args || docker compose $args
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

  OpenV2X Edge Portal (Edgeview): http://$OPENV2X_EXTERNAL_IP
  OpenV2X Central Portal (Centerview): http://$OPENV2X_EXTERNAL_IP:8080

  username: admin
  password: dandelion

  $(tput sgr0)"
}

set_edge_site_config(){
  token=$(curl -X POST "http://$OPENV2X_EXTERNAL_IP/api/v1/login" --header 'Content-Type: application/json' --data '{"username": "admin","password": "dandelion"}' | awk -F"[,:}]" '{for(i=1;i<=NF;i++){print $(i+1)}}' | tr -d '"' | sed -n 1p)
  curl -X POST "http://$OPENV2X_EXTERNAL_IP/api/v1/system_configs" --header 'Authorization: '"bearer $token" --header 'Content-Type: application/json' --data '{"name": "mqtt"}' 1>/dev/null
  curl -X POST "http://$OPENV2X_EXTERNAL_IP/api/v1/system_configs" --header 'Authorization: '"bearer $token" --header 'Content-Type: application/json' --data '{ "mqtt_config": {"host": "'${OPENV2X_EXTERNAL_IP}'", "password": "'${EMQX_ROOT_CONVERT}'", "port": "1883", "username": "root"} }' 1>/dev/null
}

clean_garbage_images(){
  if [[ ${OPENV2X_CLEAN_GARBAGE_IMAGES} == true ]] ;then
    # docker images | grep none | awk '{print $3}' | xargs -I{} docker rmi -f {}
    garbage_images=$(docker images | grep none | awk '{print $3}')
    for i in $garbage_images
    do
      echo Deleting image: $i
      docker rmi -f $i || true
    done
  fi
}

{
  set_env
  verify_input
  convert
  verify_uninstall
  pre_install
  verify_install
  set_edge_site_config
  clean_garbage_images
}
