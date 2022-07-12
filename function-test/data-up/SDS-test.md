# 数据共享场景

## 1. 测试工具

RSU模拟器

## 2. 配置

```yaml
Host:  106.15.193.98
Path:  /mqtt
Port:  15675
ClientID:  R328328
Username:  root
Password: abc@1234
Publish1 Topic:  V2X/RSU/R328328/RSM/UP/DAWNLINE
Publish2 Topic:  V2X/RSU/R328328/VIR/UP
Subscribe Topic:  V2X/DEVICE/R328328/APPLICATION/SDS
```

## 3. 测试数据

test_data/SDS_track.json

test_data/msg_VIR_SDS.json

## 4. 测试过程

    1. 打开 rsu 模拟器，填入配置，点击 connect 连接设备
    2. 填入 Subscribe Topic，点击 Subscribe 按钮，下方出现已连接窗口
    3. 选择数据共享场景，轨迹数据 和 数据共享场景，车辆请求信息，再点击Publish
    4. 观察Receive Messages 是否收到数据
    5. 观察云控大屏展示效果

![](image/SDS_track1.png)

![](image/SDS_track2.png)

![](image/SDS_track3.png)

## 5.返回数据(例)

```
[{"type":"SDS","ego_point":{"x":571,"y":577},"other_cars":[{"x":440,"y":610},{"x":466,"y":569}]}]
```

## 6. 测试结论

本测试模拟感知数据共享，通过云控大屏显示可知，红色圈代表发起感知数据共享请求车辆，蓝色圈代表感知到的周边车辆，感知数据共享功能测试通过。
