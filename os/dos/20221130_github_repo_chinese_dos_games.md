# chinese-dos-games


### 开始


在gitee.com中浏览，看到许多关于chinese-dos-games的项目。号称中文 DOS 游戏合集，目前共有 1898 款游戏。并提供用Python脚本下载。


### 追踪


 - 原始项目: <https://github.com/rwv/chinese-dos-games>
 - 网站: <https://dos.zczc.cz/>
 
### 网站

 - 提供免费在线玩游戏的服务。用的是一个JS版本的DOSBOX。
 - 提供桌面版本的下载。
 
### 桌面

打开桌面版本：**在线 DOS 游戏 7.0.14.exe** ， 首先注意到是***免费时间将在24小时后结束***。之后就是收费的时间，需要购买黄金会员，每月几十元。
程序紧接着自动打开了一个DOSBOX的窗口，DOS界面自动执行了一些命令，进了“大富翁3”的游戏界面。
这些自动运行的东西令我好奇，因为我都是被动的。我不喜欢被动。
所以我在大富翁3美妙的背景音乐里面，试图找出这个程序怎么做到这些东西。

### 分析

DOSBOX窗口，是一个叫做DOSBOX-X的版本。发现其软件位于一个十八层的目录：
```CMD
%USERPROFILE%\AppData\Roaming\dos.zczc.cz-electron\GameMisc\DosBoxExecutable\win32\x64\0.83.23\bin\x64\Release SDL2\
```

游戏文件则位于：
```CMD
%USERPROFILE%\AppData\Roaming\dos.zczc.cz-electron\GameMisc\GameFiles\6df95c8a278bc9a1cd909ed2\
```

游戏目录里有个文件夹.jsdos，里面有两个文件：dosbox.conf和jsdos.json。一个是dosbox的配置文件，一个是jsdos即dosbox网页端的配置文件。

### 手动

 - 退出***DOSBOX***
 - 关掉***在线 DOS 游戏 7.0.14***
 - 复制DOSBOX-X目录至一个容易找到的目录。例如***D:\Games\DosBox-X***
 - 复制游戏目录至一个容易找到的目录。例如***D:\Games\DosGames\大富翁3***
 - 打开cmd.exe
	```cmd
	D:
	cd D:\Games\DosGames\大富翁3
	D:\Games\DosBox-X\dosbox-x.exe --conf .jsdos\dosbox.conf
	```
 - 大富翁3的音乐很快响起。
 
### 总结

这个项目真的很好，最大的好处是保存了许多游戏，也就是许多人的回忆。整理这些游戏文件，写配置文件，也一定要花费不少的精力。为作者点赞。

  
 