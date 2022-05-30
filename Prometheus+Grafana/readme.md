# prometheus如何从多个actuators上拉取数据
> 如下配置从xunwu-order拉取监控指标，从乐高拉取监控指标，注意：targets里面的ip必须是宿主机真实ip
```yml
scrape_configs:                                                                                                                                                                      
     - job_name: 'xunwu-actuator-springboot'
       metrics_path: '/xunwu-order/actuator/prometheus'
       static_configs:
         - targets: ['122.166.0.100:8082']
     - job_name: 'orchestrator-actuator-springboot'
       metrics_path: '/actuator/prometheus'
       static_configs:
         - targets: ['122.166.0.100:10086']
```

# 参考文章
https://www.jianshu.com/p/97c9363d85bd

# 启动方式
docker-compose up -d

# 启动后访问地址
* 访问prometheus
浏览器里打开 http://localhost:23333, 通过菜单，将页面切换到 Targets, 在targets 里能看到我们的监控任务(针对spring boot actuator信息的拉取任务)
* 访问grafana
浏览器打开http://localhost:3000

# 注意事项
基本按着上面博客操作就可以

但是由于prometheus 是需要访问宿主机的actuator端点的，那么所有需要访问宿主机网络的地方都不能设置成localhost, 必须设置成宿主机的真实ip


# grafana新建面板操作步骤
* 先点击setting按钮，创建prometheus数据源
* 再左侧点击+号，点击import,输入4701（jvm大盘模版），再选择刚刚创建的数据源。
* 点击load,则针对指定应用的grafana监控大盘配置完成
