# 说明

这个仓库是个人学习使用,存放练习项目(xunwu)的相关docker-compose文件

# 已经添加的compose
## minio
MinIO 是一个基于Apache License v2.0开源协议的对象存储服务

文档地址:https://docs.minio.io/cn/deploy-minio-on-docker-compose.html

## nacos
github地址:https://github.com/nacos-group/nacos-docker

nacos集群访问地址为: ip:集群中的任一端口/nacos  具体的端口配置查看文件夹内部的docker-compose文件

## rabbitmq
rabbitmq不是docker-compose启动,采用的docker run启动。 同时rabbitmq 支持插件，安装方式见目录下的readme.md

## kafka
docker-compose -f  compose文件名  up   # 启动容器

# todolist
* 添加redis5集群的compse
* 添加elasticsearch集群compose
* 添加rocketmq集群compse
