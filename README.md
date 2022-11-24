# SelfConfig

自己使用的配置文件备份

1. aria2 目录下存放的是 aria2 配置文件，文件应该被还原到 `~/.aria2`

2. nvim 目录存放的是 Neovim 的配置文件，文件应该被还原到 `~/.config/nvim`

<img width="1440" alt="image" src="https://user-images.githubusercontent.com/32992109/203686101-fb35978f-9b81-4488-879e-a46a2a0ce324.png">

<img width="1440" alt="image" src="https://user-images.githubusercontent.com/32992109/203686154-7041c368-6a95-43a0-85bc-66def3ba098f.png">

<img width="1440" alt="image" src="https://user-images.githubusercontent.com/32992109/203686180-fb1ddea5-7989-4cae-9391-a046328c9cec.png">

<img width="1440" alt="image" src="https://user-images.githubusercontent.com/32992109/203686261-cce5cad2-c840-40e5-b829-f9c26aa51b88.png">

<img width="1440" alt="image" src="https://user-images.githubusercontent.com/32992109/203686292-84ffb8f0-6467-45f8-9d26-2b925f332d50.png">



3. Rime 目录下存放的输入法配置文件，文件应该被还原到 `~/Library/Rime`

![](https://i0.hdslb.com/bfs/album/b825cde4f4769fe5a08774ad194a6434ed0d2dcb.png)

4. `Sublime Text`终端打开

```shell
	ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
```

5. 安装 Homebrew 

   ```shell
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

   更换Homebrew的源

   ```shell
   cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
   git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-core.git
   ```

   







## 自动启动项设置

	Library/LaunchAgents/*： 为开机启动项将其拷贝至~/ 对应的目录下


	```shell
	# 修改文件权限 这里给出的是 aria2 的，其他的大体一致，需要改名字
	chmod 644 ~/Library/LaunchAgents/aria2.plist
	# 添加自启动项
	launchctl load ~/Library/LaunchAgents/aria2.plist
	# 启动自启动项
	launchctl start aria2
	```

## 注意事项

- Rime 配置可以使用软连接
- kitty 里面的 ranger 使用 python2 的 pillow 库，Mac 默认是没有安装 pip 的：

	```sh
	wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
	python2 get-pip.py
	rm get-pip.py
	```
	配置完毕后就可以在 kitty 里面预览图片了

