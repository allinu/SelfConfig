#/bin/bash

rm ~/.zshrc

ln -s $PWD/aria2/.aria2 ~/.aria2
ln -s $PWD/nvim ~/.config/nvim
ln -s $PWD/kitty ~/.config/kitty
ln -s $PWD/ranger ~/.config/ranger
ln -s $PWD/.jupyter/ ~/.jupyter
ln -s $PWD/.zshrc ~/.zshrc

mkdir -p ~/.config/
mkdir -p  ~/Library/LaunchAgents/
mkdir -p  /usr/local/bin

source ~/.zshrc

# 使用本镜像站来升级 pip
pip install -i https://mirrors.ustc.edu.cn/pypi/web/simple pip -U
pip config set global.index-url https://mirrors.ustc.edu.cn/pypi/web/simple

npm config set registry https://registry.npm.taobao.org

# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
# git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-core.git


# Sublime text 终端打开
# ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
# Library/LaunchAgents/*： 为开机启动项将其拷贝至~/ 对应的目录下
ln -s $PWD/Library/LaunchAgents/aria2.plist ~/Library/LaunchAgents/aria2.plist
ln -s $PWD/Library/LaunchAgents/jupyter.plist ~/Library/LaunchAgents/jupyter.plist
# 修改文件权限 这里给出的是 aria2 的，其他的大体一致，需要改名字
chmod 644 ~/Library/LaunchAgents/aria2.plist
chmod 644 ~/Library/LaunchAgents/jupyter.plist
# 添加自启动项
launchctl load ~/Library/LaunchAgents/aria2.plist
launchctl load ~/Library/LaunchAgents/jupyter.plist
# 启动自启动项
launchctl start aria2
launchctl start jupyter


# brew install neovim aria2 gdb cmake bat ranger lsd autojump

cd ~/.config/nvim && ./install.sh
