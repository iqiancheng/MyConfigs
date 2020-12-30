# 简易的命令行入门教程:

## Git 全局设置:
```shell
git config --global user.name "lz_wang"
git config --global user.email "lzwang1994@163.com"
```

## 创建 git 仓库:
```shell
mkdir myconfigs
cd myconfigs
git init
touch README.md
git add README.md
git commit -m "first commit"
git remote add origin https://gitee.com/lz_wang/myconfigs.git
git push -u origin master
```

## 已有仓库?
```shell
cd existing_git_repo
git remote add origin https://gitee.com/lz_wang/myconfigs.git
git push -u origin master
```