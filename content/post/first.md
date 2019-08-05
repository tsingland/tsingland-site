---
title: "家庭存储中心"
date: 2019-08-03T12:42:20+08:00
---

<img src = "/post/honorpro2.png" width  = "600" height = "400" div align = right/>

# 荣耀路由pro2 seafile 搭建私有云

seafile 国内领先的开源私有云提供商，类似于百度云盘，可以自己搭建服务器。 
[seafile 官网](https://www.seafile.com/)


## 总体架构

由于树莓派 USB 接口供电功率有限，所以为了使移动硬盘长期稳定的工作，不能将移动硬盘直接连接到树莓派 USB 接口上。
荣耀路由pro2配备12V 大功率电源，足以满足移动硬盘的供电需求。因此我们将移动硬盘挂载到荣耀路由pro2 上。树莓派
通过网线连接到路由器局域网口。移动硬盘作为网盘挂载到树莓派指定目录。并作为移动硬盘后端存储。

## 方案特点

1. 低功耗
2. 高效存储
3. 低成本

## 荣耀和树莓派组成局域网

荣耀路由中的存储禁止外网对其进行访问。所以树莓派不能作为 wan 口设备。


## 挂载honorrouterpro2 中硬盘到树莓派

```
sudo mount -t cifs -o user=sun,password=123,vers=1.0 //192.168.3.1/Seagate_usb1_1 /opt/honordisk
```


## 使用荣耀路由pro2 和树莓派3搭建seafile

1. 开机自动挂载硬盘到 /opt/honordisk 目录
2. 建立seafile-data 到 /opt/honordisk 软连接
3. ln -s /opt/honordisk/seafile-data /opt/haiwen/seafile-data

移动硬盘在树莓派上的挂载目录：/opt/honordisk
seafile 后端存储位置: /opt/haiwei/seafile-data
