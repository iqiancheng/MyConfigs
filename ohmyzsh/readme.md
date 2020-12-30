# 安装并配置 oh-my-zsh

## 1、安装zsh并设置为默认

debian系

```shell
sudo apt-get install zsh
```

Red Hat 系

```shell
sudo yum install zsh
```

为当前用户设置为默认的shell

```shell
chsh -s /bin/zsh
```

如果要切换回原来的bash

```shell
chsh -s /bin/bash
```

## 2、安装oh-my-zsh

### 在线方式

[oh-my-zsh的Github官方仓库](https://github.com/ohmyzsh/ohmyzsh)提供了三种方法。

第一种，使用curl

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

第二种，使用wget

```shell
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

第三种，使用fetch

```shell
sh -c "$(fetch -o - https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 离线方式

1. 从[oh-my-zsh的Github官方仓库](https://github.com/ohmyzsh/ohmyzsh)下载好压缩包，得到`ohmyzsh-master`文件夹
2. 拷贝`ohmyzsh-master`文件夹下所有文件到`~/.oh-my-zsh`目录下:

```shell
cp -r ~/Download/ohmyzsh-master ~/.oh-my-zsh
```

3. 拷贝模板配置文件到`~/.zshrc`文件夹下

```shell
cp ~/.oh-my-zsh/templates/zshrc.zsh ~/.zshrc
```

4. 刷新zsh配置

```shell
source ~/.zshrc
```

## 3、配置oh-my-zsh

### 插件安装

1. 语法高亮: [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
2. 智能建议: [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
3. 解压文件: extract（自带）

```shell
cd ~/.oh-my-zsh/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions
source ~/.zshrc
```

### 详细配置

参考同级目录的`.zshrc`文件即可。

## 4. 故障排除

如果打开终端后，启动zsh出现如下警告: 

```shell
[oh-my-zsh] Insecure completion-dependent directories detected:
drwxrwxrwx 4 root root  4096 9月  27 14:26 /usr/share/zsh
drwxrwxrwx 5 root root  4096 9月  27 14:26 /usr/share/zsh/5.2
drwxrwxrwx 2 root root 36864 9月  27 14:26 /usr/share/zsh/5.2/functions
drwxrwxrwx 2 root root  4096 11月 17 17:07 /usr/share/zsh/site-functions

[oh-my-zsh] For safety, we will not load completions from these directories until
[oh-my-zsh] you fix their permissions and ownership and restart zsh.
[oh-my-zsh] See the above list for directories with group or other writability.

[oh-my-zsh] To fix your permissions you can do so by disabling
[oh-my-zsh] the write permission of "group" and "others" and making sure that the
[oh-my-zsh] owner of these directories is either root or your current user.
[oh-my-zsh] The following command may help:
[oh-my-zsh]     compaudit | xargs chmod g-w,o-w

[oh-my-zsh] If the above didn't help or you want to skip the verification of
[oh-my-zsh] insecure directories you can set the variable ZSH_DISABLE_COMPFIX to
[oh-my-zsh] "true" before oh-my-zsh is sourced in your zshrc file.
```

解决方法，修改.zshrc配置文件

```shell
cd
vim .zshrc
```

添加一行如下

```shell
ZSH_DISABLE_COMPFIX=true
```

再次刷新zsh配置即可

```shell
source ~/.zshrc
```

## 5、在OpenWrt系统上使用oh-my-zsh

```shell
opkg update

opkg install zsh
opkg install git
opkg install git-http
opkg install ca-certificates

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i -- 's:/bin/ash:/usr/bin/zsh:g' /etc/passwd

# reboot, all done
```

## 6、参考资料

1. oh-my-zsh官方仓库地址: <https://github.com/ohmyzsh/ohmyzsh>
2. zsh+on-my-zsh配置教程指南: <https://segmentfault.com/a/1190000013612471>  
3. oh-my-zsh提示检测到不安全的完成相关目录: <https://www.jianshu.com/p/7251819d790e>
4. oh-my-zsh主题展示: <https://github.com/ohmyzsh/ohmyzsh/wiki/Themes>
5. 在Fedora上优化bash或zsh: <https://zhuanlan.zhihu.com/p/91195187>
6. zsh-syntax-highlighting : <https://github.com/zsh-users/zsh-syntax-highlighting>
7. zsh-autosuggestions: <https://github.com/zsh-users/zsh-autosuggestions>
8. Install oh-my-zsh on openwrt/lede-project: <https://gist.github.com/fire1ce/65d3e370120750a5deb283abe1d74491>
9. 在openwrt中最小化安装oh-my-zsh: <https://itcao.com/2020/06031516.html>
