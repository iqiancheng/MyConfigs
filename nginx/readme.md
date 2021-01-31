## 1、安装nginx

```shell
yum install -y nginx
```

## 2、启动nginx服务，并配置开机启动

```shell
systemctl start nginx.service  # 启动nginx服务
systemctl enable nginx.service  # 配置开机启动
```

## 3、修改nginx配置文件

先停掉nginx服务

```shell
nginx -s stop
```

定位并修改nginx.conf文件

```shell
locate nginx.conf  # 假定目录为/etc/nginx/nginx.conf
vim /etc/nginx/nginx.conf
```

详细配置参考同目录下的`nginx.conf`即可。

## 4、再次启动nginx

```shell
nginx  # 或者 nginx -s reload
```

## 参考资料

1. 把 Hugo 博客部署到VPS: <http://www.shashun.site/post/first/>
2. Nginx配置文件解析：<https://www.runoob.com/note/34639>
3. nginx.conf的常用配置类型和方法: <https://eatrice.top/post/nginx-conf%E7%9A%84%E5%B8%B8%E7%94%A8%E9%85%8D%E7%BD%AE%E7%B1%BB%E5%9E%8B%E5%92%8C%E6%96%B9%E6%B3%95/>
4. 用Nginx做端口转发（反向代理）: <https://zhuanlan.zhihu.com/p/108740468>
