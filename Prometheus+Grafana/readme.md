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
浏览器里打开 http://localhost:23333, 通过菜单，将页面切换到 Targets, 在targets 里能看到我们的监控任务

# 注意事项
基本按着上面博客操作就可以

但是由于prometheus 是需要访问宿主机的actuator端点的，那么所有需要访问宿主机网络的地方都不能设置成localhost, 必须设置成宿主机的真实ip
