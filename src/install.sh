#!/bin/sh
set -e

unalias cp 2>/dev/null || true
alias docker-compose='docker compose'

OPENV2X_REGISTRY_CN="registry.cn-shanghai.aliyuncs.com"
arch=$(uname -i)
[[ $arch == arm* ]] || [[ $arch = aarch64 ]] && OPENV2X_REGISTRY_CN="registry.cn-hangzhou.aliyuncs.com"
# echo "OPENV2X_REGISTRY_CN=$OPENV2X_REGISTRY_CN"

set_env() {
  [[ ! -n "$OPENV2X_EXTERNAL_IP" ]] && read -p "Enter your openv2x external ip: " OPENV2X_EXTERNAL_IP
  [[ ! -n "$OPENV2X_CENTER_IP" ]] && read -p "Enter your openv2x center ip: " OPENV2X_CENTER_IP
  [[ ! -n "$OPENV2X_REDIS_ROOT" ]] && read -p "Enter your redis root password: " OPENV2X_REDIS_ROOT
  [[ ! -n "$OPENV2X_MARIADB_ROOT" ]] && read -p "Enter your mariadb root password: " OPENV2X_MARIADB_ROOT
  [[ ! -n "$OPENV2X_MARIADB_DANDELION" ]] && read -p "Enter your mariadb dandelion password: " OPENV2X_MARIADB_DANDELION
  [[ ! -n "$OPENV2X_EMQX_ROOT" ]] && read -p "Enter your emqx root password: " OPENV2X_EMQX_ROOT

  echo "export OPENV2X_EXTERNAL_IP=$OPENV2X_EXTERNAL_IP"
  echo "export OPENV2X_CENTER_IP=$OPENV2X_CENTER_IP"
  echo "export OPENV2X_REDIS_ROOT=$OPENV2X_REDIS_ROOT"
  echo "export OPENV2X_MARIADB_ROOT=$OPENV2X_MARIADB_ROOT"
  echo "export OPENV2X_MARIADB_DANDELION=$OPENV2X_MARIADB_DANDELION"
  echo "export OPENV2X_EMQX_ROOT=$OPENV2X_EMQX_ROOT"
}

verify_input() {
  if [[ ! -n "$OPENV2X_EXTERNAL_IP" ]] ;then
    echo "you have not input openv2x external ip!"
    exit 1
  fi
  if [[ ! -n "$OPENV2X_CENTER_IP" ]] ;then
    echo "you have not input openv2x center ip!"
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
  containers=(redis emqx mariadb dandelion omega omega-qiankun cerebrum rse-simulator hippocampus rtsp_simulator udp_client openpcdet lalserver cerebrum_overspeed_external_service cerebrum_reverse_external_service)
  for i in ${containers[@]}; do
    docker stop $i 2>/dev/null || true
    docker rm $i 2>/dev/null || true
  done
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
  cp -rf deploy/dandelion /etc/
  cp -rf deploy/omega /etc/
  sed -i "s/127.0.0.1/$OPENV2X_EXTERNAL_IP/" /etc/dandelion/dandelion.conf
  sed -i "s/redis12345/$REDIS_ROOT_CONVERT/" /etc/dandelion/dandelion.conf
  sed -i "s/dandelion123/$MARIADB_DANDELION_CONVERT/" /etc/dandelion/dandelion.conf
  sed -i "s/abc@1234/$EMQX_ROOT_CONVERT/" /etc/dandelion/dandelion.conf
  rm -rf /var/log/dandelion && mkdir -p /var/log/dandelion
  rm -rf /openv2x/data && mkdir -pv /openv2x/data
  cp -rf deploy/mysql /openv2x/data/
  cp -rf deploy/lalserver /openv2x/data/
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

modify_registry(){
  cerebrum=${registry}/openv2x/cerebrum:latest
  dandelion=${registry}/openv2x/dandelion:latest
  roadmocker=${registry}/openv2x/roadmocker:latest
  hippocampus=${registry}/openv2x/hippocampus:latest
  rtsp_simulator=${registry}/openv2x/rtsp_simulator:latest
  lalserver=${registry}/openv2x/lal:latest
  redis=${registry}/openv2x/redis:6.2.4-alpine
  emqx=${registry}/openv2x/emqx:4.3.0
  mariadb=${registry}/openv2x/mariadb:10.5.5
  lidar=${registry}/openv2x/lidar:latest
  omega=${registry}/openv2x/omega:latest
  sed -i "s#openv2x/dandelion:latest#$dandelion#" /tmp/init/docker-compose-init.yaml
  sed -i "s#mariadb:10.5.5#$mariadb#" /tmp/pre/docker-compose-pre.yaml
  sed -i "s#emqx/emqx:4.3.0#$emqx#" /tmp/pre/docker-compose-pre.yaml
  sed -i "s#redis:6.2.4-alpine#$redis#" /tmp/pre/docker-compose-pre.yaml
  sed -i "s#openv2x/rtsp_simulator#$rtsp_simulator#" /tmp/pre/docker-compose-pre.yaml
  sed -i "s#openv2x/lal#$lalserver#" /tmp/pre/docker-compose-pre.yaml
  sed -i "s#openv2x/dandelion:latest#$dandelion#" /tmp/service/docker-compose-service.yaml
  sed -i "s#openv2x/cerebrum:latest#$cerebrum#" /tmp/service/docker-compose-service.yaml
  sed -i "s#openv2x/roadmocker:latest#$roadmocker#" /tmp/service/docker-compose-service.yaml
  sed -i "s#openv2x/lidar:latest#$lidar#" /tmp/service/docker-compose-service.yaml
  sed -i "s#openv2x/omega:latest#$omega#" /tmp/service/docker-compose-service.yaml

}

launch_hippocampus(){
  if [[ ${OPENV2X_ENABLE_GPU} == true ]]
  then
    nvidia-docker run -d --restart=always --name=hippocampus -e camera_id=cam_0 -e rtsp=rtsp://localhost:8554/mystream --gpus all --net=host ${registry}/openv2x/hippocampus:latest
  else
    docker run -d --restart=always --name=hippocampus -e camera_id=cam_0 -e rtsp=rtsp://localhost:8554/mystream --net=host ${registry}/openv2x/hippocampus:latest
  fi
}

launch_lidar(){
  docker pull ${registry}/openv2x/lidar:latest
  wget https://openv2x.oss-ap-southeast-1.aliyuncs.com/data/lidar/velo.tar.gz \
  && tar zxvf velo.tar.gz \
  && rm -rf velo.tar.gz
  nvidia-docker run --name openpcdet -d --restart=always -e mqtt_host=$OPENV2X_EXTERNAL_IP -e mqtt_password=$OPENV2X_EMQX_ROOT -p 28300:28300 -p 57142:57142 --net=host --gpus all ${registry}/openv2x/lidar:latest
  docker run --name udp_client -d --restart=always -e udp_host=127.0.0.1  -v $(pwd)/velo:/root/OpenPCDet/data/points -e dir_path=/root/OpenPCDet/data/points --net=host ${registry}/openv2x/lidar:latest python /root/OpenPCDet/svc/udp_client.py
}

verify_install() {
  registry="docker.io"
  if [[ ${OPENV2X_REGION} == cn ]]
  then 
    registry=$OPENV2X_REGISTRY_CN
    modify_registry
  fi
  images=(hippocampus-base hippocampus rtsp_simulator lal dandelion cerebrum omega roadmocker)
  for i in ${images[@]}; do
    docker pull ${registry}/openv2x/$i:latest
  done

  args="-f /tmp/pre/docker-compose-pre.yaml up -d"
  docker-compose $args || docker compose $args
  [[ ${OPENV2X_ENABLE_DEMO_CAMERA} != true ]] && docker stop rtsp_simulator
  verify_mysql
  args="-f /tmp/init/docker-compose-init.yaml up -d"
  docker-compose $args || docker compose $args
  verify_bootstrap
  docker rm dandelion_bootstrap || true
  args="-f /tmp/service/docker-compose-service.yaml up -d"
  docker-compose $args || docker compose $args
  [[ ${OPENV2X_ENABLE_DEMO_CAMERA} == true ]] && launch_hippocampus
  [[ ${OPENV2X_RUN_LIDAR} == true ]] && launch_lidar
  [[ ${OPENV2X_IS_CENTER} != true ]] && docker stop omega 1>/dev/null
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

  OpenV2X Central Omega Portal: http://$OPENV2X_CENTER_IP:2288
  
  username: admin
  password: dandelion

  $(tput sgr0)"
}

get_token(){
  token=$(curl -X POST "http://$1:28300/api/v1/login" --header 'Content-Type: application/json' --data '{"username": "admin","password": "dandelion"}' | awk -F"[,:}]" '{for(i=1;i<=NF;i++){print $(i+1)}}' | tr -d '"' | sed -n 1p)
  count=0
  while [[ ! $token ]] && [[ $count -lt 5 ]]
    do
      sleep 3
      token=$(curl -X POST "http://$1:28300/api/v1/login" --header 'Content-Type: application/json' --data '{"username": "admin","password": "dandelion"}' | awk -F"[,:}]" '{for(i=1;i<=NF;i++){print $(i+1)}}' | tr -d '"' | sed -n 1p)
      count=$[$count+1]
    done
}

set_edge_site_config(){
  get_token $OPENV2X_CENTER_IP
  mqtt_name=$(hostname)
  message="MQTT Connection failed"
  count=0
  result=0
  while [[ "$result" != "" ]] && [[ $count -lt 3 ]]
  do
    response=$(curl -X POST "http://$OPENV2X_CENTER_IP:28300/api/v1/edge_site" --header 'Authorization: '"bearer $token" --header 'Content-Type: application/json' --data '{"name": "'${mqtt_name}-${OPENV2X_EXTERNAL_IP}'","edgeSiteDandelionEndpoint":"http://'${OPENV2X_EXTERNAL_IP}':28300/","areaCode": "320115","desc":"","centerDandelionEndpoint":"http://'${OPENV2X_CENTER_IP}':28300" }')
    result=$(echo $response | grep "${message}" || true)
    count=$[$count+1]
  done
}

create_demo_rsu_model(){
    rsu_model_data='{"name":"demoRsuModel","manufacturer":"华为","desc":"RSU1的描述"}'
    rsu_model_id=$(curl -X POST "http://$OPENV2X_EXTERNAL_IP:28300/api/v1/rsu_models" --header 'Authorization: '"bearer $token" --header 'Content-Type: application/json' --data "$rsu_model_data" | sed 's/,/\n/g' | grep "id" | sed 's/:/\n/g' | sed '1d' | sed 's/}//g')

}

create_demo_rsu(){
    rsu_data='{"rsuId":"45348","rsuEsn":"R328328","rsuName":"demoRsu","rsuIP":"192.168.0.102","lat":"31.9348466377","lon":"118.8213963998","rsuModelId":'$rsu_model_id'}'
    rsu_id=$(curl -X POST "http://$OPENV2X_EXTERNAL_IP:28300/api/v1/rsus" --header 'Authorization: '"bearer $token" --header 'Content-Type: application/json' --data "$rsu_data" | sed 's/,/\n/g' | grep "id" | sed 's/:/\n/g' | sed '1d' | sed 's/}//g')
}

create_demo_camera(){
  if [[ ${OPENV2X_ENABLE_DEMO_CAMERA} == true ]]; then
    camera_data='{"name":"demoCamera","sn":"CameraID_0","streamUrl":"'http://$OPENV2X_EXTERNAL_IP:7001/live/cam_0.flv'","lng":"123","lat":"12","elevation":2,"towards":2,"rsuId":'$rsu_id'}'
    curl -X POST "http://$OPENV2X_EXTERNAL_IP:28300/api/v1/cameras" --header 'Authorization: '"bearer $token" --header 'Content-Type: application/json' --data "$camera_data" 1>/dev/null
  fi
}

create_demo_lidar(){
  if [[ ${OPENV2X_ENABLE_DEMO_LIDAR} == true ]]; then
    lidar_data='{"name":"demoLidar","sn":"lidarID_0","lng":"12","lat":"12","elevation":12,"towards":12,"rsuId":'$rsu_id',"lidarIP":"100.100.100.100","point":"12","pole":"12","wsUrl":"ws://172.16.151.70:28300/ws/127.0.0.1"}'
    curl -X POST "http://$OPENV2X_EXTERNAL_IP:28300/api/v1/lidars" --header 'Authorization: '"bearer $token" --header 'Content-Type: application/json' --data "$lidar_data" 1>/dev/null
  fi
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
  get_token $OPENV2X_EXTERNAL_IP
  create_demo_rsu_model
  create_demo_rsu
  create_demo_camera
  create_demo_lidar
  clean_garbage_images
}
