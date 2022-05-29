# 说明

这个仓库是个人学习使用,存放练习项目(xunwu)的相关docker-compose文件

# 已经添加的compose
## minio
MinIO 是一个基于Apache License v2.0开源协议的对象存储服务

文档地址:https://docs.minio.io/cn/deploy-minio-on-docker-compose.html

## nacos
> 下载桌面版docker启动nacos集群的时候若无法启动成功，则可以设置减小nacos的使用内存（桌面版docker可供nacos使用内存不足导致）

github地址:https://github.com/nacos-group/nacos-docker

nacos集群访问地址为: ip:集群中的任一端口/nacos  具体的端口配置查看文件夹内部的docker-compose文件

## rabbitmq
rabbitmq不是docker-compose启动,采用的docker run启动。 同时rabbitmq 支持插件，安装方式见目录下的readme.md

## kafka
docker-compose -f  compose文件名  up   # 启动容器

localhost:9000 访问kafka-manager

## redis cluster
不需要使用docker-compose,直接使用官方提供的脚本(reids/redis-6.2.6/utils/create-cluster目录下)

## Prometheus+Grafana
详见Prometheus+Grafana目录下的readme.md

# todolist
* 添加elasticsearch集群compose
* 添加rocketmq集群compse
