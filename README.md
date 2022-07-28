# PaaS云平台

## 安装说明

平台后端基于[go-kit](https://github.com/go-kit/kit)、前端基于[ant-design](https://github.com/ant-design/ant-design)(版本略老)框架进行开发。

后端所使用到的依赖全部都在[go.mod](go.mod)里，前端的依赖在`package.json`，详情的请看yarn.lock

### 安装教程

1.将代码克隆到本地

2.在根目录执行go mod tidy 安装后端依赖

3.在PaaS-frontend目录执行yarn install 命令安装前端依赖

4.修改PaaS-frontend前端中的连接后端的地址（全局搜索192.168.145.132全局替换成localhost即可）

5.同步namespace，即PaaS平台真正与你的k8s集群进行连接，将自己的kubernets的当前用户/.kube/config文件的内容覆盖到config.yaml文件。之后执行同步namespace的命令GO111MODULE=on go run cmd/client/client.go sync namespace -c ./app.cfg -k ./config.yaml即可。参考下方视频教程本地连接k8s

6.在根目录执行make run命令启动后端

7.在根目录/install/docker-compose/jmtest目录下，执行docker-compose up命令启动中间件

8.打开navicate等可视化数据库连接工具，执行在根目录/sql文件目录下的kplcloud.sql文件

9.在PaaS-frontend前端项目根目录执行yarn start ，之后选择run指令即可启动前端（需提前克隆前端到本地）

10.访问localhost:8000，登录平台即可使用

### 后端依赖以及中间件总结

golang和docker以及docker-compose需进行安装，

此外的几个中间件执行安装教程中的7.步骤即可，无需进行本地安装

- Golang 1.12+ [安装手册](https://golang.org/dl/)
- MySQL 5.7+ (大多数据都存在mysql)
- Docker 18.x+ [安装](https://docs.docker.com/install/)
- RabbitMQ (主要用于消息队列)
- Jenkins 2.176.2+ (老版本对java适配可能会有问题，尽量使用新版本)
- docker-compose不要求版本

## 相关文档

[前身文档](https://docs.nsini.com/)

### 视频教程

- [本地启动](https://www.bilibili.com/video/av75847198/)
- [本地连接K8S](https://www.bilibili.com/video/av75890739/)
- [创建一个应用](https://www.bilibili.com/video/av75898315/)
