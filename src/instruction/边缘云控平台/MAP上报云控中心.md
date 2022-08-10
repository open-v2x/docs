# MAP 上报云控中心

## 1. 登录 OpenV2X 边缘云控平台（OpenV2X Edge Portal）

OpenV2X 边缘云控平台网址：http://\<ip-address\>:80/user/login，输入正确的用户名、密码(username: admin
password:dandelion)可登录平台。

点击运维管理- MAP 配置界面

## 2. 配置 RSE Simulator 建立监听

打开 RSE Similator http://\<ip-address\>:6688，配置 Username、password、clientID 建立连接

点击 Subscribe 建立监听

## 3. RSE Simulator 发送数据

在 DataSet 中选择 RSU_MAP，点击 Publish 进行发送

## 4. 查看 RSE Simulator 接收数据及 MAP 配置界面

在 Receive Messages 中看到接收的数据内容，在 MAP 配置界面上看到 RSU 上报的 MAP 数据
