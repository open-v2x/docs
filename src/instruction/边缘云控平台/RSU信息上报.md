# RSU 信息上报

## 1. 登录 OpenV2X 边缘云控平台（OpenV2X Edge Portal）

OpenV2X 边缘云控平台网址：http://\<ip-address\>:80/user/login，输入正确的用户名、密码(username: admin
password:dandelion)可登录平台。 进入设备管理-RSU设备界面

## 2. 配置 RSE Simulator 建立监听

打开 RSE Similator http://\<ip-address\>:6688，配置Username、password、clientID 建立连接后在 Subscriptions
中添加监听主题 V2X/RSU/INFO/UP，点击 Subscribe 进行监听

## 3. RSE Simulator 发送数据

点击RSU_INFO 中 preview 查看数据，将数据复制到 publish 的 message 中，修改rsuEsn字段，点击publish发送数据

## 4. 查看 边缘云控平台RSU设备

在设备管理页面RSU设备中查看，新增未注册RSU数据
