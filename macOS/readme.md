
## Install Brew Package Manager
**注意**：macOS本机必须已安装git和xcode工具包（执行如下命令时会提示安装，会车确认即可）

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Install fonts for coding (by brew)
使用字体：
1. [iosevka](https://github.com/be5invis/Iosevka)
2. [FiraCode](https://github.com/tonsky/FiraCode/wiki/Installing)
3. [Powerline fonts](https://github.com/powerline/fonts)

```shell
# install for iosevka and fira-code
brew tap homebrew/cask-fonts
brew install --cask font-iosevka font-fira-code

# install for powerline fonts
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts && ./install.sh
# clean-up a bit
cd .. && rm -rf fonts
```
