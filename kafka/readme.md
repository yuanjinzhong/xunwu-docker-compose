# 关于kafka-manager启动不起来的问题
```yml

   kafka-manager:  
      image: sheepkiller/kafka-manager:latest
      restart: always
      container_name: kafka-manager
      hostname: kafka-manager
      command: -Dpidfile.path=/dev/null  # 增加这个可以启动kafka-manager    

```


# 关于kafka-manager启动起来链接不上zookper的问题
原因是新建kafka集群的时候,配置的zookeep地址是127.0.0.1:2181
其实kafka-manager容器内部是不认识这个地址的,
改成zoo1:2181就可以了
