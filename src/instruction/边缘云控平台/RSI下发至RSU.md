# RSI 下发至RSU

## 1. 配置 RSE Simulator 建立监听

打开 RSE Similator（用于展示监听的消息内容和发送特定数据）http://\<ip-address\>:6688，配置 Username、password、clientID 建立连接后在
Subscriptions 中添加监听主题 V2X/RSU/R328328/RSI/DOWN，点击 Subscribe 进行监听

## 2. RSE Simulator 发送数据

在 DataSet 中选择 RSI_data，点击 Publish 进行发送

## 3. 查看 RSE Simulator 接收数据

在 Receive Messages 中看到接收的 RSI 信息下发消息内容
