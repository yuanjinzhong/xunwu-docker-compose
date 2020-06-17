#!/bin/bash

echo "启动rabbitmq,需要保证本地有任意版本的rabbitmq的镜像"

# 打印出rabbimtmq的镜像名字
docker images |grep rabbitmq |awk '{print $1":"$2}'|xargs echo 镜像名；


docker images |grep rabbitmq |awk '{ imageName=$1":"$2; print imageName}' | xargs docker run -d -it -p:5672 -p 15672:15672 --name rabbitLearn --hostname rabbitCluster01

# 打印出启动的容器id
docker  ps |grep rabbitmq |awk '{containerId=$1;print containerId}' |xargs echo  容器id:

# docker run -d -it -p:5672 -p 15672:15672 --name rabbitLearn --hostname rabbitCluster01 ${imageName};


# 进入容器内部
# docker  ps |grep rabbitmq |awk '{containerId=$1;print containerId}' |xargs -I  docker exec -it {} /bin/bash

