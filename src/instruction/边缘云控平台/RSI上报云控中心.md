# RSI 上报云控中心

## 1. 登录 OpenV2X 边缘云控平台（OpenV2X Edge Portal）

OpenV2X 边缘云控平台网址：http://\<ip-address\>:80/user/login，输入正确的用户名、密码(username: admin
password:dandelion)可登录平台。

点击事件管理-路侧单元信息（RSI）界面

## 2. 配置 RSE Simulator 建立监听

打开 RSE Similator（用于展示结构化数据内容）http://\<ip-address\>:6688，配置 Username、password、clientID 建立连接后在
Subscriptions 中添加监听主题 V2X/RSU/R328328/RSI/UP，点击 Subscribe 进行监听

## 3. RSE Simulator 发送数据

在 DataSet 中选择 RSI_data，点击 Publish 进行发送

## 4. 查看 RSE Simulator 接收数据及路侧单元信息（RSI）界面

在 Receive Messages 中看到接收的结构化数据内容，在路侧单元信息（RSI）界面上看到RSI上报消息的内容
