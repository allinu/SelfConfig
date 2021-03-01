# SelfConfig

自己使用的配置文件备份

1. aria2 目录下存放的是 aria2 配置文件，文件应该被还原到 `~/.aria2`

2. nvim 目录存放的是 Neovim 的配置文件，文件应该被还原到 `~/.config/nvim`

![](https://i0.hdslb.com/bfs/album/8b3d3b8aef4866bfcaed2760dd4c5d0a0d90932a.png)

3. Rime 目录下存放的输入法配置文件，文件应该被还原到 `~/Library/Rime`

![](https://i0.hdslb.com/bfs/album/b825cde4f4769fe5a08774ad194a6434ed0d2dcb.png)



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
	curl https://bootstrap.pypa.io/2.7/get-pip.py -o get-pip.py
	python2 get-pip.py
	rm get-pip.py
	```
	配置完毕后就可以在 kitty 里面预览图片了

