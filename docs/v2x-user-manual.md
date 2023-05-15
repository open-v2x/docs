# OpenV2X 用户手册

## 中心云控平台

### 注册边缘站点

#### 1. 注册边缘站点

##### 1.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。

##### 1.2 注册边缘站点

点击右上角“站点管理”，点击“注册边缘站点”，输入边缘站点名称 ，边缘站点安装区域，边缘站点网络地址及描述，点击提交。边缘站点网络地址需要真实可用。

![a](./images/register_node_1.png)

注册成功后，可以退出站点管理页面，在顶部切换边缘站点。

![a](./images/register_node_4.png)

#### 2. 编辑边缘站点

点击进入“站点管理”，在边缘站点列表中选择一个边缘站点，点击“编辑”，修改相关信息，点击“提交”。

![a](./images/register_node_2.png)

#### 3. 进入边缘站点详情

点击进入“站点管理”，在边缘站点列表中选择一个边缘站点，点击名称，进入详情页。

![a](./images/register_node_3.png)

#### 4. 删除边缘站点

点击进入“站点管理”，在边缘站点列表中选择一个边缘站点，点击删除。

![a](./images/register_node_5.png)

### 设备管理

#### 1. 操作 RSU 设备

##### 1.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。选择任一边缘操作 RSU 设备。

##### 1.2 新增 RSU 设备

1. 点击进入“设备管理 - RSU 设备”，点击“添加RSU”，填入 RSU 名称、序列号、经度、纬度、RSU ID、RSU IP、RSU 型号以及描述信息，点击“提交”。

   ![a](./images/operate_rsu_device-2.png)

2. 点击进入“设备管理 - RSU 设备”，RSU 设备列表中最后一行看到新增的 RSU 。

##### 1.3 编辑 RSU 设备

点击进入“设备管理 - RSU 设备”，在注册 RSU 列表中选择一个 RSU 设备，点击“编辑”，修改相关信息，点击“提交”。

![a](./images/operate_rsu_device-3.png)

##### 1.4 启用 RSU 设备

点击进入“设备管理 - RSU 设备”，在 RSU 设备列表中点击更多，点击启用，启用已禁用的 RSU 设备。

![a](./images/operate_rsu_device-4.png)

##### 1.5 查看 RSU 设备详情信息

点击进入“设备管理 - RSU 设备”，点击 RSU 设备列表中已启用的 RSU 设备名称，进入详情页，可查看到 RSU 设备的基本信息、运行信息和配置参数。

![a](./images/operate_rsu_device-5-1.png) ![a](./images/operate_rsu_device-5-2.png)
![a](./images/operate_rsu_device-5-3.png)

##### 1.6 删除 RSU 设备

点击进入“设备管理 - RSU 设备”，在 RSU 设备列表中点击更多，删除 RSU 设备。

![a](./images/operate_rsu_device-6.png)

##### 1.7 重启 RSU 设备

点击进入“运维管理 - RSU 运维配置”，在 RSU 运维配置列表中编辑 RSU 设备，在是否重启一栏选择重启并点击“提交”。

![a](./images/operate_rsu_device-7.png)

#### 2. 操作路侧毫米波雷达设备

##### 2.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。选择任一边缘操作毫米波雷达设备。

##### 2.2 新增毫米波雷达设备

点击进入“设备管理 - 毫米波雷达设备”，点击“添加毫米波雷达”，填入雷达名称、雷达序列号、经度、纬度、海拔(m)、朝向(°)、关联 RSU、雷达 IP 以及描述信息，点击“提交”。

![a](./images/operate_radar_device-2.png)

##### 2.3 编辑雷达设备

点击进入“设备管理 - 毫米波雷达设备”，在雷达列表中选择一个雷达设备点击“编辑”，修改相关信息，点击“提交”。

![a](./images/operate_radar_device-3.png)

##### 2.4 查看雷达设备详情信息

点击进入“设备管理 - 毫米波雷达设备”，点击雷达设备列表中雷达名称，进入详情页，可查看到雷达设备的配置详情。

![a](./images/operate_radar_device-4.png)

##### 2.5 删除雷达设备

点击进入“设备管理 - 毫米波雷达设备”，在雷达设备列表中点击更多，点击删除，删除雷达设备。

![a](./images/operate_radar_device-5.png)

#### 3. 操作路侧摄像头

##### 3.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。选择任一边缘操作摄像头设备。

##### 3.2 新增摄像头设备

点击进入“设备管理 - 摄像头设备”，点击“添加摄像头”，填入摄像头名称、摄像头序列号、视频流地址、经度、纬度、海拔(m)、朝向(°)、关联 RSU 以及描述信息，点击“提交”。

![a](./images/operate_camera_device-2.png)

##### 3.3 编辑摄像头设备

点击进入“设备管理 - 摄像头设备”，在雷达列表中选择一个摄像头设备点击“编辑”，修改相关信息，点击“提交”。

![a](./images/operate_camera_device-3.png)

##### 3.4 查看摄像头设备详情信息

点击进入“设备管理 - 摄像头设备”，点击摄像头设备列表中摄像头名称，进入详情页，可查看到摄像头设备的配置详情。

![a](./images/operate_camera_device-4.png)

##### 3.5 删除摄像头设备

点击进入“设备管理 - 摄像头设备”，在摄像头设备列表中点击更多，点击删除，删除摄像头设备。

![a](./images/operate_camera_device-5.png)

#### 4. 操作路侧激光雷达设备

##### 4.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。选择任一边缘操作激光雷达设备。

##### 4.2 新增激光雷达设备

点击进入“设备管理 - 激光雷达设备”，点击“添加激光雷达传感器”，填入激光雷达名称、激光雷达序列号、经度、纬度、海拔(m)、朝向(°)、关联 RSU、激光雷达 IP 、点位、杆位、雷达 URL
以及描述信息，点击“提交”。

![a](./images/operate_lidar_device-2.png)

##### 4.3 编辑激光雷达设备

点击进入“设备管理 - 激光雷达设备”，在雷达列表中选择一个雷达设备点击“编辑”，修改相关信息，点击“提交”。

![a](./images/operate_lidar_device-3.png)

##### 4.4 查看激光雷达设备详情信息

点击进入“设备管理 - 激光雷达设备”，在雷达设备列表中点击雷达设备名称，进入详情页，可查看到雷达设备的配置详情。

![a](./images/operate_lidar_device-4.png)

##### 4.5 启用激光雷达设备

点击进入“设备管理 - 激光雷达设备”，在雷达设备列表中点击更多，点击启用，启用雷达设备。

![a](./images/operate_lidar_device-6.png)

##### 4.6 删除激光雷达设备

点击进入“设备管理 - 激光雷达设备”，在激光雷达设备列表中点击更多，点击删除，删除雷达设备。

![a](./images/operate_lidar_device-5.png)

#### 5. 操作路侧信号灯设备

##### 5.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。选择任一边缘操作信号灯设备。

##### 5.2 新增信号灯设备

点击进入“设备管理 - 信号灯设备”，点击“添加信号灯”，填入信号灯名称、信号灯序列号、信号灯相位 ID 、信号灯相位灯色状态、关联 RSU 、信号灯网络地址、点位以及描述信息，点击“提交”。

![a](./images/operate_spat_device-2.png)

##### 5.3 编辑信号灯设备

点击进入“设备管理 - 信号灯设备”，在信号灯列表中选择一个信号灯设备点击“编辑”，修改相关信息，点击“提交”。

![a](./images/operate_spat_device-3.png)

##### 5.4 查看信号灯设备详情信息

点击进入“设备管理 - 信号灯设备”，在信号灯设备列表中点击信号灯设备名称，进入详情页，可查看到信号灯设备的配置详情。

![a](./images/operate_spat_device-4.png)

##### 5.5 启用信号灯设备

点击进入“设备管理 - 信号灯设备”，在信号灯设备列表中点击更多，点击启用，启用信号灯设备。

![a](./images/operate_spat_device-6.png)

##### 5.6 删除信号灯设备

点击进入“设备管理 - 信号灯设备”，在信号灯设备列表中点击更多，点击删除，删除信号灯设备。

![a](./images/operate_spat_device-5.png)

#### 6. 操作路侧雷视一体机设备

##### 6.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。选择任一边缘操作雷视一体机设备。

##### 6.2 新增雷视一体机设备

点击进入“设备管理 - 雷视一体机”，点击“添加雷视一体机”，填入雷视一体机名称、雷视一体机序列号 、经度、纬度、海拔(m)、朝向(°)、点位、杆位、关联 RSU、雷视一体机
IP、视频流地址及描述，点击“提交”。

![a](./images/operate_rv_device-1.png)

##### 6.3 编辑雷视一体机设备

点击进入“设备管理 - 雷视一体机”，在雷视一体机列表中选择一个设备，点击“编辑”，修改相关信息，点击“提交”。

![a](./images/operate_rv_device-2.png)

##### 6.4 查看雷视一体机设备详情信息

点击进入“设备管理 - 雷视一体机”，在雷视一体机列表中点击“设备名称”，可查看到雷视一体机设备的配置详情。

![a](./images/operate_rv_device-3.png)

##### 6.5 启用雷视一体机设备

点击进入“设备管理 - 雷视一体机”，在雷视一体机设备列表中点击“更多”，再点击“启用”，启用雷视一体机设备。

![a](./images/operate_rv_device-4.png)

##### 6.6 删除雷视一体机设备

点击进入“设备管理 - 雷视一体机”，在雷视一体机设备列表中点击“更多”，再点击“删除”，删除雷视一体机设备。

![a](./images/operate_rv_device-5.png)

#### 7. RSU 信息上报

##### 7.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。 选择任一边缘，进入设备管理-RSU设备界面。

##### 7.2 配置 RSE Simulator 建立监听

打开 RSE Similator http://\<ip-address\>:6688，ip-address 为所选边缘站点的 ip ，配置Username、password、clientID
建立连接后在 Subscriptions 中添加监听主题 V2X/RSU/INFO/UP，点击 Subscribe 进行监听。

##### 7.3 RSE Simulator 发送数据

点击 RSU_INFO 中 preview 查看数据，将数据复制到 Publish 的 message 中，修改 rsuEsn 字段，在 Publish 的 Topic 中输入
V2X/RSU/INFO/UP，点击 publish 发送数据。

##### 7.4 查看云控平台RSU设备

在设备管理页面 RSU 设备中查看，点击“未注册 RSU”，新增未注册 RSU 数据。

#### 8. RSU 心跳上报

##### 8.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。选择任一边缘，进入设备管理 - RSU 设备界面。

##### 8.2 RSE Simulator 发送数据

打开 RSE Similator http://\<ip-address\>:6688，ip-address 为所选边缘站点的 ip ，配置Username、password、clientID
建立连接。在 Heartbeat 中点击 Start 进行发送。

![a](./images/heartbeats.png)

##### 8.3 查看 RSU 设备界面

在 RSU 设备界面上看到 RSU 设备在线状态为“在线”

![a](./images/online.png)

### 事件管理

#### 1. 查看历史数据统计分析结果

##### 1.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。 选择任一边缘，查看历史数据统计分析结果。

##### 1.2 查看历史数据统计分析结果

1. 点击进入“事件管理-路侧安全消息（RSM）”， 可查看 RSM 消息的历史数据，支持根据“参与者类型”进行过滤查询。![a](./images/history_data-2-1.png)
   ![a](./images/history_data-2-2.png)

| 字段          | 描述                                                                                                                                                                                               |
| ----------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| 消息 ID       | 参数说明：消息ID，由平台生成                                                                                                                                                                                  |
| 目标 ID       | 参数说明：请求目标OBU、RSU的ID                                                                                                                                                                              |
| 参与者类型       | 取值范围：机动车、非机动车、行人、RSU设备                                                                                                                                                                           |
| 数据来源        | 参数说明：定义交通参与者数据 的来源。 <br />取值范围： 0：unknown（未知数据源 类型） 1：rsu（RSU自身信息） 2：v2x（参与者自身的v2x广 播消息） 3：video（视频传感器） 4：microwaveRadar（微波 雷达传感器） 5：loop（地磁线圈传感器） 6：lidar（激光雷达传感器） 7：integrated（类或以上感 知数据的融合结果） |
| 1 分钟中的毫秒级时刻 | 参数说明：以0.1 秒为单位，定 义1分钟中的毫秒级时刻。分辨 率为1毫秒，有效范围是 0~59999。 60000及以上表示未 知或无效数值。                                                                                                                         |
| 速度          | 参数说明：车辆或其他交通参与者的速度大小                                                                                                                                                                             |
| 航向角         | 参数说明：车辆或交通参与者的 航向角。为运动方向与正北方向 的顺时针夹角                                                                                                                                                             |
| 经度          | 参数说明：定义经度数值。东经为正，西经为负                                                                                                                                                                            |
| 纬度          | 参数说明：定义纬度数值，北纬为正，南纬为负                                                                                                                                                                            |
| 上报时间        | 参数说明：事件发生时间，毫秒级。 格式：yyyy-MM-dd''T''HH:mm:ss.SSS''Z'' 例如 2015-12-12T12:12:12.356Z。                                                                                                                |

2.点击进入“事件管理-路侧单元消息（RSI）”， 可查看 RSI 消息的历史数据，支持根据“事件类型”进行过滤查询。![a](./images/history_data-3-1.png)
![a](./images/history_data-3-2.png)

| 字段      | 描述                                                                                                  |
| ------- | --------------------------------------------------------------------------------------------------- |
| 告警 ID   | 参数说明：告警 ID，由平台生成                                                                                    |
| 事件持续时长  | 取值范围（长度）：0-256                                                                                      |
| 事件分类    | 取值范围：异常路况、异常车况、恶劣天气、标志标牌                                                                            |
| 事件类型    | 取值范围：火灾检测、道路设施破损、雨、冰雹、风、雾、雪、霾、沙尘暴、抛洒物识别、行人识别、动物识别、路面湿滑、路面结冰、道路拥堵、车辆超速、车辆慢行、车辆停驶、车辆逆行、紧急车辆优先通行、大货车识别 |
| 事件来源    | 取值范围：警方数据、政府数据、气象数据、互联网数据、检测器检测到的数据、平台上报的数据、RSU上报的数据、车载终端上报数据                                       |
| 事件置信度水平 | 参数说明：道路交通事件的信息 来源提供的事件置信度水平，帮 助接收端判断是否相信该事件信 息，可选。<br />取值范围：0-200，无事件置信度水平用-表示                     |
| 发生区域半径  | 参数说明：事件的影响区域半径，可选，单位为 分米。用半径表示影响区域边界离中心线的垂直 距离，反映该区域的宽度以覆盖实际路段，无发生区域半径用-表示。<br />取值范围：0-65535       |
| 事件描述信息  | 取值范围（长度）：0-256，无事件描述信息用-表示                                                                          |
| 事件优先级   | 参数说明：事件优先级，0-7， 数字越大，级别越高。无事件优先级用-表示<br />取值范围：0-7                                                  |
| 上报时间    | 参数说明：事件发生时间，毫秒级。 格式：yyyy-MM-dd''T''HH:mm:ss.SSS''Z'' 例如 2015-12-12T12:12:12.356Z。                   |

3.点击进入“交叉路口碰撞预警 (ICW)”，可查看 ICW 消息的历史数据，支持根据“碰撞类型”进行过滤查询。![a](./images/history_data-4-1.png)
![a](./images/history_data-4-2.png)

| 字段          | 描述                                                                                |
| ----------- | --------------------------------------------------------------------------------- |
| ID          | 参数说明：ID，由平台生成                                                                     |
| 传感器经度       | 参数说明：定义经度数值。东经为正，西经为负                                                             |
| 传感器纬度       | 参数说明：定义纬度数值，北纬为正，南纬为负                                                             |
| 碰撞类型        | 取值范围：追尾碰撞预警、前向碰撞预警、侧向碰撞预警                                                         |
| 1 分钟中的毫秒级时刻 | 参数说明：以0.1 秒为单位，定义1分钟中的毫秒级时刻。分辨率为1毫秒，有效范围是 0~59999。 60000及以上表示未知或无效数值。             |
| 上报时间        | 参数说明：事件发生时间，毫秒级。 格式：yyyy-MM-dd''T''HH:mm:ss.SSS''Z'' 例如 2015-12-12T12:12:12.356Z。 |

4.点击进入“弱势交通参与者碰撞预警 (VRUCW)”，可查看 VRUCW 消息的历史数据，支持根据“碰撞类型”进行过滤查询。![a](./images/history_data-5-1.png)
![a](./images/history_data-5-2.png)

| 字段          | 描述                                                                                |
| ----------- | --------------------------------------------------------------------------------- |
| ID          | 参数说明：ID，由平台生成                                                                     |
| 传感器经度       | 参数说明：定义经度数值。东经为正，西经为负                                                             |
| 传感器纬度       | 参数说明：定义纬度数值，北纬为正，南纬为负                                                             |
| 碰撞类型        | 取值范围：追尾碰撞预警、前向碰撞预警、侧向碰撞预警                                                         |
| 1 分钟中的毫秒级时刻 | 参数说明：以0.1 秒为单位，定义1分钟中的毫秒级时刻。分辨率为1毫秒，有效范围是 0~59999。 60000及以上表示未知或无效数值。             |
| 上报时间        | 参数说明：事件发生时间，毫秒级。 格式：yyyy-MM-dd''T''HH:mm:ss.SSS''Z'' 例如 2015-12-12T12:12:12.356Z。 |

5.点击进入“逆向超车预警 (DNPW)”，可查看 DNPW 消息的历史数据，支持根据“协调信息类型”进行过滤查询。![a](./images/history_data-6-1.png)
![a](./images/history_data-6-2.png)

| 字段          | 描述                                                                                |
| ----------- | --------------------------------------------------------------------------------- |
| ID          | 参数说明：ID，由平台生成                                                                     |
| 消息编号        | 参数说明：请求目标OBU、RSU的ID                                                               |
| 1 分钟中的毫秒级时刻 | 参数说明：以0.1 秒为单位，定 义1分钟中的毫秒级时刻。分辨率为1毫秒，有效范围是 0~59999。 60000及以上表示未知或无效数值。            |
| 经度          | 参数说明：定义经度数值。东经为正，西经为负                                                             |
| 纬度          | 参数说明：定义纬度数值，北纬为正，南纬为负                                                             |
| 目标 ID       | 参数说明：请求目标OBU、RSU的ID                                                               |
| 驾驶行为类型      | 取值范围：直行、向左变更车道、向右变更车道、驶入、驶出、直行通过交叉路口、左转通过交叉路口、右转通过交叉路口、掉头通过交叉路口、停止、减速慢行、加速行驶、泊车   |
| 请求有效时长      | 参数说明：以10毫秒为单位，定义当前描述时刻（较早）相对于参考时间点（较晚）的偏差。用于车辆历史轨迹点的表达。<br />取值范围：0-65535         |
| 协调信息类型      | 取值范围：合作式变道、合作式车辆汇入、交叉路口变道、通过无信号交叉口、动态车道管理、车道预订、车道禁行、信号优先                          |
| 上报时间        | 参数说明：事件发生时间，毫秒级。 格式：yyyy-MM-dd''T''HH:mm:ss.SSS''Z'' 例如 2015-12-12T12:12:12.356Z。 |

6.点击进入“感知数据共享 (SDS)”，可查看 SDS 消息的历史数据，支持根据“设备类型”进行过滤查询。![a](./images/history_data-7-1.png)
![a](./images/history_data-7-2.png)

| 字段          | 描述                                                                                |
| ----------- | --------------------------------------------------------------------------------- |
| ID          | 参数说明：ID，由平台生成                                                                     |
| 消息编号        | 参数说明：请求目标OBU、RSU的ID                                                               |
| 设备类型        | 取值范围：RSU、OBU、VRU                                                                  |
| 传感器经度       | 参数说明：定义经度数值。东经为正，西经为负                                                             |
| 传感器纬度       | 参数说明：定义纬度数值，北纬为正，南纬为负                                                             |
| 1 分钟中的毫秒级时刻 | 参数说明：以0.1 秒为单位，定 义1分钟中的毫秒级时刻。分辨 率为1毫秒，有效范围是 0~59999。 60000及以上表示未知或无效数值。           |
| 车辆 ID       | 参数说明：请求目标OBU的ID                                                                   |
| 车辆经度        | 参数说明：定义经度数值。东经为正，西经为负                                                             |
| 车辆纬度        | 参数说明：定义纬度数值，北纬为正，南纬为负                                                             |
| 上报时间        | 参数说明：事件发生时间，毫秒级。 格式：yyyy-MM-dd''T''HH:mm:ss.SSS''Z'' 例如 2015-12-12T12:12:12.356Z。 |

7.点击进入“协作式变道 (CLC)”，可查看 CLC 消息的历史数据，支持根据“协调信息类型”进行过滤查询。![a](./images/history_data-8-1.png)
![a](./images/history_data-8-2.png)

| 字段          | 描述                                                                                |
| ----------- | --------------------------------------------------------------------------------- |
| ID          | 参数说明：ID，由平台生成                                                                     |
| 消息编号        | 参数说明：请求目标OBU、RSU的ID                                                               |
| 1 分钟中的毫秒级时刻 | 参数说明：以0.1 秒为单位，定 义1分钟中的毫秒级时刻。分辨率为1毫秒，有效范围是 0~59999。 60000及以上表示未 知或无效数值。           |
| 经度          | 参数说明：定义经度数值。东经为正，西经为负                                                             |
| 纬度          | 参数说明：定义纬度数值，北纬为正，南纬为负                                                             |
| 目标 ID       | 参数说明：请求目标OBU、RSU的ID                                                               |
| 驾驶行为类型      | 取值范围：直行、向左变更车道、向右变更车道、驶入、驶出、直行通过交叉路口、左转通过交叉路口、右转通过交叉路口、掉头通过交叉路口、停止、减速慢行、加速行驶、泊车   |
| 请求有效时长      | 参数说明：以10毫秒为单位，定义当前描述时刻（较早）相对于参考时间点（较晚）的偏差。用于车辆历史轨迹点的表达。<br />取值范围：0-65535         |
| 协调信息类型      | 取值范围：合作式变道、合作式车辆汇入、交叉路口变道、通过无信号交叉口、动态车道管理、车道预订、车道禁行、信号优先                          |
| 上报时间        | 参数说明：事件发生时间，毫秒级。 格式：yyyy-MM-dd''T''HH:mm:ss.SSS''Z'' 例如 2015-12-12T12:12:12.356Z。 |

8.点击进入“拥堵预警（Congestion）”，可查看拥堵消息的历史数据，支持根据“拥堵级别”进行过滤查询。点击详情，可进入详情页面查看更多信息。
![a](./images/history_data-9-1.png) ![a](./images/history_data-9-2.png)

| 字段          | 描述                                                                                |
| ----------- | --------------------------------------------------------------------------------- |
| ID          | 参数说明：ID，由平台生成                                                                     |
| 拥堵级别        | 取值范围：畅通、一级拥堵、二级拥堵、三级拥堵                                                            |
| 平均车速        | 车道上所有车辆的平均速度                                                                      |
| 1 分钟中的毫秒级时刻 | 参数说明：以0.1 秒为单位，定 义1分钟中的毫秒级时刻。分辨率为1毫秒，有效范围是 0~59999。 60000及以上表示未 知或无效数值。           |
| 创建时间        | 参数说明：事件发生时间，毫秒级。 格式：yyyy-MM-dd''T''HH:mm:ss.SSS''Z'' 例如 2015-12-12T12:12:12.356Z。 |
| 详情-消息 ID    | 参数说明：ID，由平台生成                                                                     |
| 详情-传感器经度    | 参数说明：定义经度数值。东经为正，西经为负                                                             |
| 详情-传感器纬度    | 参数说明：定义纬度数值，北纬为正，南纬为负                                                             |
| 详情-上报时间     | 参数说明：事件发生时间，毫秒级。 格式：yyyy-MM-dd''T''HH:mm:ss.SSS''Z'' 例如 2015-12-12T12:12:12.356Z。 |

9.点击进入“车辆超速预警（OSW）”，可查看 OSW 消息的历史数据。点击详情，可进入详情页面查看更多信息。![a](./images/history_data-10-1.png)
![a](./images/history_data-10-2.png)

| 字段          | 描述                                                                                |
| ----------- | --------------------------------------------------------------------------------- |
| ID          | 参数说明：ID，由平台生成                                                                     |
| 1 分钟中的毫秒级时刻 | 参数说明：以 0.1 秒为单位，定义 1 分钟中的毫秒级时刻。分辨率为 1 毫秒，有效范围是 0~59999。 60000 及以上表示未 知或无效数值。      |
| 超速车辆经度      | 参数说明：定义经度数值。东经为正，西经为负                                                             |
| 超速车辆纬度      | 参数说明：定义纬度数值，北纬为正，南纬为负                                                             |
| 目标 id       | 参数说明：超速目标 OBU 的 ID                                                                |
| 创建时间        | 参数说明：事件发生时间，毫秒级。 格式：yyyy-MM-dd''T''HH:mm:ss.SSS''Z'' 例如 2015-12-12T12:12:12.356Z。 |
| 详情-消息 ID    | 参数说明：ID，由平台生成                                                                     |
| 详情-传感器经度    | 参数说明：定义经度数值。东经为正，西经为负                                                             |
| 详情-传感器纬度    | 参数说明：定义纬度数值，北纬为正，南纬为负                                                             |
| 详情-速度       | 参数说明：车辆或其他交通参与者的速度大小                                                              |
| 详情-方向角      | 参数说明：以目标轨迹的位置为中心，将正北方向作为起始方向旋转到目标的方向线所成的角                                         |
| 详情-上报时间     | 参数说明：事件发生时间，毫秒级。 格式：yyyy-MM-dd''T''HH:mm:ss.SSS''Z'' 例如 2015-12-12T12:12:12.356Z。 |

10.点击进入“车辆慢行预警（SSW）”，可查看 SSW 消息的历史数据。点击详情，可进入详情页面查看更多信息。![a](./images/history_data-11-1.png)
![a](./images/history_data-11-2.png)

| 字段          | 描述                                                                                |
| ----------- | --------------------------------------------------------------------------------- |
| ID          | 参数说明：ID，由平台生成                                                                     |
| 慢行车辆纬度      | 参数说明：定义纬度数值，北纬为正，南纬为负                                                             |
| 慢行车辆经度      | 参数说明：定义经度数值。东经为正，西经为负                                                             |
| 目标 id       | 参数说明：慢行目标 OBU 的 ID                                                                |
| 1 分钟中的毫秒级时刻 | 参数说明：以 0.1 秒为单位，定义 1 分钟中的毫秒级时刻。分辨率为 1 毫秒，有效范围是 0~59999。 60000 及以上表示未知或无效数值。       |
| 创建时间        | 参数说明：事件发生时间，毫秒级。 格式：yyyy-MM-dd''T''HH:mm:ss.SSS''Z'' 例如 2015-12-12T12:12:12.356Z。 |
| 详情-消息 ID    | 参数说明：ID，由平台生成                                                                     |
| 详情-传感器经度    | 参数说明：定义经度数值。东经为正，西经为负                                                             |
| 详情-传感器纬度    | 参数说明：定义纬度数值，北纬为正，南纬为负                                                             |
| 详情-速度       | 参数说明：车辆或其他交通参与者的速度大小                                                              |
| 详情-方向角      | 参数说明：以目标轨迹的位置为中心，将正北方向作为起始方向旋转到目标的方向线所成的角                                         |
| 详情-上报时间     | 参数说明：事件发生时间，毫秒级。 格式：yyyy-MM-dd''T''HH:mm:ss.SSS''Z'' 例如 2015-12-12T12:12:12.356Z。 |

11.点击进入“车辆逆行预警（RDW）”，可查看 RDW 消息的历史数据。点击详情，可进入详情页面查看更多信息。![a](./images/history_data-12-1.png)
![a](./images/history_data-12-2.png)

| 字段          | 描述                                                                                |
| ----------- | --------------------------------------------------------------------------------- |
| ID          | 参数说明：ID，由平台生成                                                                     |
| 逆行车辆纬度      | 参数说明：定义纬度数值，北纬为正，南纬为负                                                             |
| 逆行车辆经度      | 参数说明：定义经度数值。东经为正，西经为负                                                             |
| 目标 id       | 参数说明：逆行目标 OBU 的 ID                                                                |
| 1 分钟中的毫秒级时刻 | 参数说明：以 0.1 秒为单位，定义 1 分钟中的毫秒级时刻。分辨率为 1 毫秒，有效范围是 0~59999。 60000 及以上表示未知或无效数值。       |
| 创建时间        | 参数说明：事件发生时间，毫秒级。 格式：yyyy-MM-dd''T''HH:mm:ss.SSS''Z'' 例如 2015-12-12T12:12:12.356Z。 |
| 详情-消息 ID    | 参数说明：ID，由平台生成                                                                     |
| 详情-传感器经度    | 参数说明：定义经度数值。东经为正，西经为负                                                             |
| 详情-传感器纬度    | 参数说明：定义纬度数值，北纬为正，南纬为负                                                             |
| 详情-速度       | 参数说明：车辆或其他交通参与者的速度大小                                                              |
| 详情-方向角      | 参数说明：以目标轨迹的位置为中心，将正北方向作为起始方向旋转到目标的方向线所成的角                                         |
| 详情-上报时间     | 参数说明：事件发生时间，毫秒级。 格式：yyyy-MM-dd''T''HH:mm:ss.SSS''Z'' 例如 2015-12-12T12:12:12.356Z。 |

#### 2. RSM 上报云控中心

##### 2.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。 选择任一边缘，查看路侧安全消息（RSM)。

点击事件管理-路侧安全消息（RSM)界面

##### 2.2 配置 RSE Simulator 建立监听

打开 RSE Similator http://\<ip-address\>:6688，ip-address 为所选边缘节点的 ip ，配置 Username、password、clientID
建立连接

##### 2.3 RSE Simulator 发送数据

在 DataSet 中选择 video_track 或者 radar_track 数据，点击 Publish 进行发送

##### 2.4 查看 RSE Simulator 接收数据及 RSM 界面

在 事件管理-路侧安全消息 (RSM) 界面查看数据

![a](./images/RSM_data.png)

#### 3. RSM 下发 RSU

##### 3.1 配置 RSE Simulator 建立监听

打开 RSE Similator http://\<ip-address\>:6688，ip-address 为所选边缘站点的 ip ，配置 Username、password、clientID
建立连接后在 Subscriptions 中添加监听主题 V2X/RSU/R328328/RSM/DOWN，点击 Subscribe 进行监听。

##### 3.2 RSE Simulator 发送数据

在 DataSet 中选择 video_track 或者 radar_track 数据，点击 Publish 进行发送

##### 3.3 查看 RSE Simulator 接收数据

在Receive Messages 中看到接收的 RSM 下发的消息内容

![a](./images/RSM-to-RSU.png)

### 运维管理

#### 1. 查询下发 RSU 设备指令

##### 1.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。选择任一边缘查询下发 RSU 设备指令。

##### 1.2 下发 RSU 设备指令查询

点击进入“运维管理 - RSU 信息查询”， 点击“查询指令”，在弹出的界面可选择查询信息类型、查询信息时间区间以及查询 RSU，选择完毕点击“提交”，即可查询 下发 RSU 设备指令。

![a](./images/rsu_information_query-1.png) ![a](./images/rsu_information_query-2.png)
![a](./images/rsu_information_query-3.png) ![a](./images/rsu_information_query-4.png)

#### 2. 配置 RSU 设备日志上报地址

##### 2.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。选择任一边缘配置 RSU 设备日志上报地址。

##### 2.2 配置 RSE Simulator 监听

打开 RSE Simulator（用于展示路口RSU收到的信息）http://\<ip-address\>:6688，ip-address 为所选边缘站点的 ip ，在 Subscriptions
中添加监听主题 V2X/RSU/R328328/Log/UP，点击 Subscribe 进行监听。

![a](./images/rsu_log_config-1.png)

##### 2.3 配置 RSU 日志上报地址

在云控平台中点击进入“运维管理 -RSU 日志上报配置下发”，点击“添加配置”，填入日志上传地址、日志服务器用户名、日志服务器密码、服务器类型以及 RSU 信息并点击提交。

![a](./images/rsu_log_config-2.png)

##### 2.4 查看 RSE Simulator 监听消息

RSE Simulator 监听到云控平台配置的信息，以 json 字符串的形式显示。

![a](./images/rsu_log_config-3.png)

#### 3. 下发运维配置至 RSU 设备

##### 3.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。选择任一边缘下发运维配置至 RSU 设备。

##### 3.2 配置 RSE Simulator 监听

打开 RSE Simulator（用于展示路口RSU收到的信息）http://\<ip-address\>:6688，ip-address 为所选边缘站点的 ip ，在 Subscriptions
中添加监听主题 V2X/RSU/R328328/MNG/DOWN，点击 Subscribe 进行监听。

##### 3.3 下发配置至 RSU 设备

在云控平台中点击进入“运维管理 - RSU 运维配置”，在 RSU 配置列表中选择一个 RSU 配置点击“下发”

![a](./images/rsu_maintenance_config-1.png)

##### 3.4 查看 RSE Simulator 监听消息

RSE Simulator 监听到云控平台配置的信息，以 json 字符串的形式显示。

![a](./images/rsu_maintenance_config-2.png)

#### 4. MAP 上报云控中心

##### 4.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。选择任一边缘，进入运维管理- MAP 管理界面。

##### 4.2 配置 RSE Simulator 建立监听

打开 RSE Similator http://\<ip-address\>:6688， ip-address 为所选边缘站点的 ip ，配置 Username、password、clientID
建立连接，在 Subscriptions 中添加监听主题 V2X/RSU/R328328/MAP/UP，点击 Subscribe 进行监听

##### 4.3 RSE Simulator 发送数据

在 DataSet 中选择 RSU_MAP，点击 Publish 进行发送

##### 4.4 查看 RSE Simulator 接收数据及 MAP 管理界面

在 Receive Messages 中看到接收的数据内容，在 MAP 管理界面上看到 RSU 上报的 MAP 数据。（ Columbia 版本每个边缘默认已经有一个 MAP 数据，故 MAP
管理界面看不到新增的 MAP 数据。）

![a](./images/rsu_up_map_config-1.png)

#### 5. MAP 下发至 RSU

_Columbia 版本暂时去掉了该功能_

##### 5.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。

点击运维管理- Map 管理界面

##### 5.2 配置 RSE Simulator 建立监听

打开 RSE Similator（用于展示路口RSU收到的MAP消息内容）http://\<ip-address\>:6688，配置 Username、password、clientID 建立连接后在
Subscriptions 中添加监听主题 V2X/RSU/R328328/MAP/DOWN，点击 Subscribe 进行监听

##### 5.3 界面添加 Map 并下发 RSU

在 MAP 配置界面中点击添加 MAP 按钮，填写必要字段，上传 MAP 数据示例，点击提交

打开 MAP 数据详情，点击下发，选择路口 RSU

##### 5.4 查看 RSE Simulator 接收数据

在 Receive Messages 中看到接收的结构化数据内容

##### 5.5 RSE Simulator 发送应答数据

添加发送主题：V2X/RSU/R328328/MAP/DOWN/ACK ，并发送`{"seqNum": "9", "errorCode": 0}`消息确认。这里的 seqNum 需要和 Receive
Messages 中数据内容最后的 seqNum 相同。

![a](./images/ack.png)

##### 5.6 查看下发状态

在 MAP 配置详情中查看 RSU 下发状态从“下发中”变为“下发成功”

![a](./images/status.png)

#### 6. RSI 上报云控中心

##### 6.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。选择任一边缘，进入事件管理-路侧单元信息（RSI）界面。

##### 6.2 配置 RSE Simulator 建立监听

打开 RSE Similator（用于展示结构化数据内容）http://\<ip-address\>:6688，ip-address 为所选边缘站点的 ip ，配置
Username、password、clientID 建立连接后在 Subscriptions 中添加监听主题 V2X/RSU/R328328/RSI/UP，点击 Subscribe 进行监听

##### 6.3 RSE Simulator 发送数据

在 DataSet 中选择 RSI_data，点击 Publish 进行发送

##### 6.4 查看 RSE Simulator 接收数据及路侧单元信息（RSI）界面

在 Receive Messages 中看到接收的结构化数据内容，在路侧单元信息（RSI）界面上看到 RSI 上报消息的内容

#### 7. RSI 下发至 RSU

##### 7.1 配置 RSE Simulator 建立监听

打开 RSE Similator（用于展示监听的消息内容和发送特定数据）http://\<ip-address\>:6688，配置 Username、password、clientID 建立连接后在
Subscriptions 中添加监听主题 V2X/RSU/R328328/RSI/DOWN，点击 Subscribe 进行监听

##### 7.2 RSE Simulator 发送数据

在 DataSet 中选择 RSI_data，点击 Publish 进行发送

##### 7.3 查看 RSE Simulator 接收数据

在 Receive Messages 中看到接收的 RSI 信息下发消息内容

#### 8. RSU 业务配置下发

##### 8.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。选择任一边缘，进入运维管理- RSU 业务配置界面。

##### 8.2 配置 RSE Simulator 建立监听

打开 RSE Similator（用于展示路口 RSU 收到的消息内容）http://\<ip-address\>:6688，ip-address 为所选边缘站点的 ip ，配置
Username、password、clientID； 建立连接后在 Subscriptions 中添加监听主题 V2X/RSU/R329329/CONFIG/DOWN，点击 Subscribe
进行监听

##### 8.3 RSU 业务配置

点击添加配置，输入配置名称、参数配置模版、参数配置适用的 RSU，点击提交

##### 8.4 RSE Simulator 接收数据

在 Receive Messages 中看到接收的 RSU 业务配置下发消息内容

![a](./images/rsu_busuness_config.png)

##### 8.5 RSE Simulator 发送应答数据

添加发送主题：V2X/RSU/R329329/CONFIG/DOWN/ACK，并发送`{"seqNum": "2", "errorCode": 0}`消息确认。这里的 seqNum 需要和
Receive Messages 中数据内容最后的 seqNum 相同。

![a](./images/rsu_ack.png)

##### 8.6 查看下发状态

进入配置详情，参数配置适用的 RSU 中的下发状态从下发中变为下发成功

![a](./images/send_status.png)

### 算法管理

#### 1. 算法版本

##### 1.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。选择任一边缘站点，点击“算法管理-算法版本”。

##### 1.2 新增算法版本

进入“算法管理-算法版本”页面，点击“新增算法版本”，选择算法模块、算法名称，输入新增的算法版本名称，下拉框选择提供算法服务的网络地址，新建步骤可参考[帮助文档](https://github.com/open-v2x/cerebrum/blob/master/docs/cerebrum_add_external_service/cerebrum%20%E6%B7%BB%E5%8A%A0%E5%A4%96%E9%83%A8%E7%AE%97%E6%B3%95.md)。

![a](./images/algorithm_version_1.png)

##### 1.3 删除算法版本

进入“算法管理-算法版本”页面，在列表中选择新建的算法版本，点击“删除”。只能删除新建的算法版本。正在使用中的算法版本无法删除。

![a](./images/algorithm_version_2.png)

#### 2. 算法配置

##### 2.1 编辑算法配置

进入“算法管理-算法配置”页面，找到要编辑的算法模块和算法名称，点击“编辑”，点击“版本名称”下拉框，选择要修改的算法版本，点击“保存”，最后点击“配置”。页面提示“操作成功”则前端页面算法版本编辑成功。想要让算法版本操作生效，还需要重启
cerebrum 容器。

![a](./images/algorithm_config_1.png)

##### 2.2 启用或禁用算法版本

进入“算法管理-算法配置”页面，找到要启用或禁用的算法模块和算法名称，点击“编辑”，点击“设备状态”下拉框，选择启用或禁用状态，点击“保存”，最后点击“配置”。页面提示“操作成功”则前端页面算法版本启用或禁用成功。想要让算法版本操作生效，还需要重启
cerebrum 容器。

![a](./images/algorithm_config_2.png)

### 交通大屏

#### 1. 查看边缘站点路口场景实况

##### 1.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。选择任一边缘站点，点击“交通大屏”。

##### 1.2 配置 RSE Simulator 连接

打开 RSE Simulator（用于发送有碰撞风险的车辆轨迹数据）http://\<ip-address\>:6688，ip-address 为所选边缘站点的 ip ，配置连接参数 “Host”
为部署 MQTT 的地址， “ClientID” 输入 “R328328”，“Password” 输入部署时提供的 MQTT root 密码，其他参数不变，点击 ”Connect“ 连接。

![a](./images/RSE_simulator_connect.png)

##### 1.3 RSE Simulator 发送数据

在 DataSet 中选择 SDS_track 和 msg_VIR_SDS，点击 Publish 进行发送。

![a](./images/data_share-3.png)

##### 1.4 查看大屏路口信息展示

进入交通大屏页面，查看右侧设备在线情况：RSU 设备在线率，路侧摄像头设备，激光雷达设备，毫米波雷达设备，信号灯设备，雷视一体机设备，点击旁边收缩按钮，可隐藏和打开“设备在线率”展示。

![a](./images/device_online_rate-1.png) ![a](./images/device_online_rate-2.png)

查看左侧路口信息：车辆总数，平均行驶速度，行人总数，拥堵情况。点击旁边收缩按钮，可隐藏和打开“路口信息”展示。

![a](./images/intersection_info-1.png) ![a](./images/intersection_info-2.png)

查看感知数据共享场景下车辆在地图上的行动轨迹，以及数据共享的可视化展示

![a](./images/data_share-4.png)

#### 2. 感知数据共享

##### 2.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。选择任一边缘站点，点击“交通大屏”。

##### 2.2 配置 RSE Simulator 连接

打开 RSE Simulator（用于发送有碰撞风险的车辆轨迹数据）http://\<ip-address\>:6688，ip-address 为所选边缘站点的 ip，配置连接参数，点击
Connect。

![a](./images/RSE_simulator_connect.png)

##### 2.3 RSE Simulator 发送数据

在 DataSet 中选择 SDS_track 和 msg_VIR_SDS，点击 Publish 进行发送。

![a](./images/data_share-3.png)

##### 2.4 查看大屏车辆数据

打开云控中心，进入交通大屏，在大屏上查看感知数据共享场景下车辆在地图上的行动轨迹，以及数据共享的可视化展示。

![a](./images/data_share-4.png)

#### 3. 交叉路口碰撞预警

##### 3.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。选择任一边缘站点，点击“交通大屏”。

##### 3.2 配置 RSE Simulator 连接

打开 RSE Simulator（用于发送有碰撞风险的车辆轨迹数据）http://\<ip-address\>:6688，ip-address 为所选边缘站点的 ip，配置连接参数，点击
Connect。

![a](./images/RSE_simulator_connect.png)

##### 3.3 RSE Simulator 发送数据

在 DataSet 中选择 ICW_track，点击 Publish 进行发送。

![a](./images/ICW_warning-3.png)

##### 3.4 查看大屏车辆数据

打开云控中心，进入交通大屏，在大屏上查看车辆数据在地图上的行动轨迹，以及碰撞风险的可视化预警。

![a](./images/ICW_warning-4.png)

#### 4 雷达、摄像头数据融合

##### 4.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。选择任一边缘站点，点击“交通大屏”。

##### 4.2 配置 RSE Simulator 建立监听

打开 RSE Similator（用于展示结构化数据内容）http://\<ip-address\>:6688，ip-address 为所选边缘站点的 ip，配置
Username、password、clientID； 建立连接后在 Subscriptions 中添加监听主题 V2X/RSU/R328328/RSM/DOWN，点击 Subscribe 进行监听

##### 4.3 RSE Simulator 发送数据

在 DataSet 中选择 multi_source_fusion_track，点击 Publish 进行发送

##### 4.4 查看 RSE Simulator 接收数据及大屏车辆轨迹

在 Receive Messages 中看到接收的结构化数据内容 在大屏上查看摄像头数据车辆行动轨迹

#### 5. 雷达数据

##### 5.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。选择任一边缘站点，点击“交通大屏”。

##### 5.2 配置 RSE Simulator 建立监听

打开 RSE Simulator（用于展示结构化数据内容）http://\<ip-address\>:6688，ip-address 为所选边缘站点的 ip，配置
Username、password、clientID 建立连接后在 Subscriptions 中添加监听主题 V2X/RSU/R328328/RSM/DOWN，点击 Subscribe 进行监听

##### 5.3 RSE Simulator 发送数据

在 DataSet 中选择雷达数据 radar_track，点击 Publish 进行发送

##### 5.4 查看 RSE Simulator 接收数据及大屏车辆轨迹

在 Receive Messages 中看到接收的结构化数据内容 在大屏上查看雷达数据车辆行动轨迹

#### 6. 路侧摄像头数据

##### 6.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。选择任一边缘站点，点击“交通大屏”。

##### 6.2 配置 RSE Simulator 建立监听

打开 RSE Similator（用于展示结构化数据内容）http://\<ip-address\>:6688，ip-address 为所选边缘站点的 ip，配置
Username、password、clientID 建立连接后在 Subscriptions 中添加监听主题 V2X/RSU/R328328/RSM/DOWN，点击 Subscribe 进行监听

##### 6.3 RSE Simulator 发送数据

在 DataSet 中选择 video_track，点击 Publish 进行发送

##### 6.4 查看 RSE Simulator 接收数据及大屏车辆轨迹

在 Receive Messages 中看到接收的结构化数据内容 在大屏上查看摄像头数据车辆行动轨迹

#### 7. 逆向超车预警

##### 7.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。选择任一边缘站点，点击“交通大屏”。

##### 7.2 配置 RSE Simulator 连接

打开 RSE Simulator（用于发送有碰撞风险的车辆轨迹数据）http://\<ip-address\>:6688，ip-address 为所选边缘站点的
ip，配置连接参数，点击Connect。

![a](./images/RSE_simulator_connect.png)

##### 7.3 RSE Simulator 发送数据

在 DataSet 中选择 DNP_track 和 msg_VIR_DNP，点击Publish 进行发送。

![a](./images/DNP_warning-3.png)

##### 7.4 查看大屏车辆数据

打开云控中心，点击交通大屏，在大屏上查看车辆数据在地图上的行动轨迹，以及逆向超车风险的可视化预警。

![a](./images/DNP_warning-4.png)

#### 8. 弱势交通参与者碰撞预警

##### 8.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。选择任一边缘站点，点击“交通大屏”。

##### 8.2 配置 RSE Similator 连接

打开 RSE Simulator（用于发送有碰撞风险的车辆轨迹数据）http://\<ip-address\>:6688，ip-address 为所选边缘站点的
ip，配置连接参数，点击Connect。

![a](./images/RSE_simulator_connect.png)

##### 8.3 RSE Simulator 发送数据

在 DataSet 中选择 VPTC_CW_track_stright 和 VPTC_CW_track_turn，点击 Publish 进行发送。

![a](./images/VPTC_CW_warning-3.png)

##### 8.4 查看大屏车辆数据

打开云控中心，点击交通大屏，在大屏上查看弱势参与者碰撞场景下车辆在地图上的行动轨迹，以及碰撞风险的可视化预警。

![a](./images/VPTC_CW_warning-4.png)

#### 9. 协作式变道

##### 9.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。选择任一边缘站点，点击“交通大屏”。

##### 9.2 配置 RSE Simulator 连接

打开 RSE Simulator（用于发送有碰撞风险的车辆轨迹数据）http://\<ip-address\>:6688，ip-address 为所选边缘站点的
ip，配置连接参数，点击Connect。

![a](./images/RSE_simulator_connect.png)

##### 9.3 RSE Simulator 发送数据

在 DataSet 中选择 CLC_track 和 msg_VIR_CLC，点击 Publish 进行发送。

![a](./images/CLC_warning-3.png)

##### 9.4 查看大屏车辆数据

打开云控中心，点击交通大屏，在大屏上查看协作变道场景下车辆在地图上的行动轨迹，以及协作车辆变道的可视化引导。

![a](./images/CLC_warning-4.png)

#### 10. 拥堵预警

##### 10.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。选择任一边缘站点，点击“交通大屏”。

##### 10.2 配置 RSE Simulator 连接

打开 RSE Simulator（用于发送有碰撞风险的车辆轨迹数据）http://\<ip-address\>:6688，ip-address 为所选边缘站点的
ip，配置连接参数，点击Connect。

![a](./images/RSE_simulator_connect.png)

##### 10.3 RSE Simulator 发送数据

在 DataSet 中选择 congestion，点击 Publish 进行发送。

![a](./images/congestion_warning_1.png)

##### 10.4 查看大屏车辆数据

打开云控中心，点击交通大屏，在大屏上查看拥堵场景下车辆在地图上的行动轨迹，以及拥堵的可视化预警。

![a](./images/congestion_warning_2.png)

#### 11. 超速预警

##### 11.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。选择任一边缘站点，点击“交通大屏”。

##### 11.2 配置 RSE Simulator 连接

打开 RSE Simulator（用于发送有碰撞风险的车辆轨迹数据）http://\<ip-address\>:6688，ip-address 为所选边缘站点的
ip，配置连接参数，点击Connect。

![a](./images/RSE_simulator_connect.png)

##### 11.3 RSE Simulator 发送数据

在 DataSet 中选择 overspeed_track ，点击 Publish 进行发送。

![a](./images/overspeed_track_warning_1.png)

##### 11.4 查看大屏车辆数据

打开云控中心，点击交通大屏，在大屏上查看超速场景下车辆在地图上的行动轨迹，以及超速的可视化预警。

![a](./images/overspeed_track_warning_2.png)

#### 12. 慢行预警

##### 12.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。选择任一边缘站点，点击“交通大屏”。

##### 12.2 配置 RSE Simulator 连接

打开 RSE Simulator（用于发送有碰撞风险的车辆轨迹数据）http://\<ip-address\>:6688，ip-address 为所选边缘站点的
ip，配置连接参数，点击Connect。

![a](./images/RSE_simulator_connect.png)

##### 12.3 RSE Simulator 发送数据

在 DataSet 中选择 slower_speed_track ，点击 Publish 进行发送。

![a](./images/slower_speed_track_1.png)

##### 12.4 查看大屏车辆数据

打开云控中心，点击交通大屏，在大屏上查看慢速场景下车辆在地图上的行动轨迹，以及慢速的可视化预警。

![a](./images/slower_speed_track_2.png)

#### 13. 逆行预警

##### 13.1 登录 OpenV2X 中心云控平台（OpenV2X Central Omega Portal）

OpenV2X 中心云控平台网址：http://\<ip-address\>:2288/user/login，输入正确的用户名、密码(username: admin password:
dandelion)可登录平台。选择任一边缘站点，点击“交通大屏”。

##### 13.2 配置 RSE Simulator 连接

打开 RSE Simulator（用于发送有碰撞风险的车辆轨迹数据）http://\<ip-address\>:6688，ip-address 为所选边缘站点的
ip，配置连接参数，点击Connect。

![a](./images/RSE_simulator_connect.png)

##### 13.3 RSE Simulator 发送数据

在 DataSet 中选择 RW_track ，点击 Publish 进行发送。

![a](./images/RW_track_1.png)

##### 13.4 查看大屏车辆数据

打开云控中心，点击交通大屏，在大屏上查看逆行场景下车辆在地图上的行动轨迹，以及逆行的可视化预警。

![a](./images/RW_track_2.png)
