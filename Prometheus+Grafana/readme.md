prometheus.yml文件中的targets: ['localhost:8080']节点监听的端口可能需要改变

# 参考文章
https://www.jianshu.com/p/97c9363d85bd

# 启动方式
docker-compose up -d

# 启动后访问地址
浏览器里打开 http://localhost:23333, 通过菜单，将页面切换到 Targets, 在targets 里能看到我们的监控任务

# 注意事项
基本按着上面博客操作就可以

但是由于prometheus 是需要访问宿主机的actuator端点的，那么所有需要访问宿主机网络的地方都不能设置成localhost, 必须设置成宿主机的真实ip
