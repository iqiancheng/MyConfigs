# 简易的命令行入门教程:

## Git 全局设置:
```shell
git config --global user.name "${your_name}"
git config --global user.email "${your_email}"
```

## 创建 git 仓库:
```shell
git init
touch README.md
git add README.md
git commit -m "first commit"
git remote add origin ${your_git_repo}
git push -u origin master
```
