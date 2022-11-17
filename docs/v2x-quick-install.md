# OpenV2X All-in-One 部署文档

## 1. 基本环境

硬件：4Core / 8G / 100G

OS：CentOS7-2009

```console
[root@v2x-release ~]# cat /etc/redhat-release
CentOS Linux release 7.9.2009 (Core)
```

## 2. kernel 升级

```shell
rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
yum install -y https://www.elrepo.org/elrepo-release-7.0-4.el7.elrepo.noarch.rpm
yum -y --disablerepo="*" --enablerepo="elrepo-kernel" list available
yum -y --disablerepo=\* --enablerepo=elrepo-kernel install kernel-lt.x86_64

awk -F\' '$1=="menuentry " {print i++ " : " $2}' /etc/grub2.cfg

grub2-set-default 0
# 这里的 0 要根据实际情况来填写

reboot
```

确认 Kernel 已经升级到 5.4

```console
[root@v2x-release ~]# uname -a
Linux v2x-release 5.4.203-1.el7.elrepo.x86_64 #1 SMP Fri Jul 1 09:00:33 EDT 2022 x86_64 x86_64 x86_64 GNU/Linux
```

## 3. docker 升级

```shell
yum remove -y docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
systemctl enable docker --now

echo "alias docker-compose='docker compose'" >> /etc/profile && source /etc/profile

docker version
docker-compose version
```

## 4. 安装 curl

```shell
yum install curl
```

## 5. 下载安装包

```shell
rm -rf openv2x-aio-beihai.tar.gz && wget https://openv2x.oss-ap-southeast-1.aliyuncs.com/deploy/beihai/openv2x-aio-beihai.tar.gz
rm -rf src && tar zxvf openv2x-aio-beihai.tar.gz
cd src

# yum install unzip -y
# rm -rf beihai.zip && wget https://gitee.com/open-v2x/docs/repository/archive/beihai.zip
# rm -rf docs-beihai && unzip beihai.zip
# cd docs-beihai/src/
```

## 6. 一键部署服务

```shell
# 这里的外部 IP 地址要确保客户端可以访问，用于后续 centerview 和 edgeview portal 访问
export OPENV2X_EXTERNAL_IP=100.100.100.100
export OPENV2X_REDIS_ROOT=password
export OPENV2X_MARIADB_ROOT=password
export OPENV2X_MARIADB_DANDELION=password
export OPENV2X_EMQX_ROOT=password
bash ./install.sh
```

安装效果如下：

```console
[root@v2x-demo src]# bash ./install.sh 

...

  openv2x has been installed successfully!
                                       ________           
  ____  ______    ____    ____ ___  __\_____  \ ___  ___ 
 /  _ \ \____ \ _/ __ \  /    \  \/ / /  ____/ \  \/  / 
(  <_> )|  |_> >\  ___/ |   |  \   / /       \  >    <  
 \____/ |   __/  \___  >|___|  / \_/  \_______ \/__/\_ \ 
        |__|         \/      \/               \/      \/ 
    repository: https://github.com/open-v2x
    portal: https://openv2x.org

  OpenV2X Edge Portal (Edgeview): http://100.100.100.100
  OpenV2X Central Portal (Centerview): http://100.100.100.100:8080

  username: admin
  password: dandelion
```

上述提示中包含了 Edge Portal 和 Central Portal 的访问路径，以及用户名密码。此时可以从客户端，通过 Chrome 浏览器（其它浏览器未测试）访问试用。

欢迎试用～，参考：[快速入门](v2x-quick-start.md)。

如果遇到问题，欢迎在 github 提交
issue：<https://github.com/open-v2x/docs/issues/new/choose>，参考：[提交注意事项](v2x_contribution-zh_CN.md)。
