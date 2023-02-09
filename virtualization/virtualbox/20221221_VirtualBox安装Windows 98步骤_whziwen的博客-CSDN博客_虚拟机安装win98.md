---
created: 2022-12-21 20:51:30

author: Eotect Nahn

tags: [虚拟机安装win98]

source: https://blog.csdn.net/whziwen/article/details/122014123

---

# VirtualBox安装Windows 98步骤_whziwen的博客-CSDN博客_虚拟机安装win98

> ## Excerpt
> 一、准备工作1、下载Windows 98 SE光盘镜像，网上下载307.3M的光盘镜像，大部分网站都是这个镜像，如下载地址：http://www.itmop.com/downinfo/14216.html，这个镜像已做成启动盘，还是比较方便。但是这个镜像没有集成KEY，后期输入有点不方便，网上还有个RAR压缩的安装文件，解开是WIN98和WIN98SE两个版本的安装文件，WIN98SE已集成了KEY。用UltraISO打开307.3M的光盘镜像删除win98下的文件，将已集成了KEY的WIN98SE的文件

---
最近需要使用一个很老的工业软件，还需要串口通讯，九十年代的软件，在虚拟机里折腾了一翻win98，以下详细介绍安装过程。VirtualBox使用的是最新版V6.1.30。  
一、准备工作  
1、下载Windows 98 SE光盘镜像，网上下载307.3M的光盘镜像，大部分网站都是这个镜像，如下载地址：http://www.itmop.com/downinfo/14216.html，这个镜像已做成启动盘，还是比较方便。但是这个镜像没有集成KEY，后期输入有点不方便，网上还有个RAR压缩的安装文件，解开是WIN98和WIN98SE两个版本的安装文件，WIN98SE已集成了KEY。用[UltraISO](https://so.csdn.net/so/search?q=UltraISO&spm=1001.2101.3001.7020)打开307.3M的光盘镜像删除win98下的文件，将已集成了KEY的WIN98SE的文件添加至win98目录下，点击“文件”“保存”保存修改的镜像。  
![在这里插入图片描述](https://img-blog.csdnimg.cn/0828df691fc14f6fb0d935340a923ae8.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBAd2h6aXdlbg==,size_20,color_FFFFFF,t_70,g_se,x_16#pic_center)

Windows 98 SE默认安装是不支持ACPI的（ACPI是Windows的一部分(Win98开始)，它帮助操作系统合理控制和分配计算机硬件设备的电量，有了ACPI，操作系统可以根据设备实际情况，根据需要把不同的硬件设备关闭。如Win7或者Win8系统，系统睡眠时，系统把当前信息储存在内存中，只保留内存等几个关键部件硬件的通电，使计算机处在高度节电状态。 ACPI功能强大，它还能够实现设备和处理器性能管理、配置/即插即用设备管理、系统事件、温度管理、嵌入式控制器以及SMBus控制器等。）要在 Windows 98 SE 系统上启用 ACPI 支持，安装时要加上/p j开关，用UltraISO导出307.3M的光盘镜像的启动文件，点击“启动”“保存引导文件”。点击“文件”“打开”，打开保存的引导文件。  
![在这里插入图片描述](https://img-blog.csdnimg.cn/57be3f74e0d94e6398d05ac4aa067ae8.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBAd2h6aXdlbg==,size_20,color_FFFFFF,t_70,g_se,x_16#pic_center)

找到AUTOEXEC.BAT文件，右键“提取”，用记事本打开提取的文件，将OEMSETUP.EXE /K "/IE /NF"行替换为OEMSETUP.EXE /K “/IE /NF /P J” ，保存后替换掉引导文件中的AUTOEXEC.BAT，保存引导文件。再次打开Windows 98 SE光盘镜像，“启动”，“加载引导文件”将修改的的引导文件导入后保存镜像。至此，安装盘的准备工作完成。

win98光盘镜像成品在此下载https://cloud.189.cn/web/share?code=j6z63y7nMfum

2、由于VirtualBox对win98虚拟机，并不支持安装增强功能，我们需要安装第三方的显卡驱动， 准备SciTech Display Doctor v7.0 Beta软件。

3、有些人可能需要用虚拟机玩一些经典的老游戏，准备DirectX-90c，这是win98支持的最后一版DirectX，准务开启DirectX的补丁。

4、准备USB设备驱动。

5、准备KernelEx以支持对更高版本的opera浏览器，当然有很多XP能使用的软件都能用KernelEx启动。

以上资源已做成光盘镜像，在此下载https://cloud.189.cn/web/share?code=muyUjuvEnQru

二、虚拟机安装  
1、创建Windows 98 SE虚拟机，内存选512M,其它默认。虚拟机创建后，右键设置，“系统”，"启用I/O APIC"打勾，处理器，”启用PAE/NX“打勾，显示，显存选64M，勾选”启用3D加速。设置完成后开始安装Windows 98 SE虚拟机。  
![在这里插入图片描述](https://img-blog.csdnimg.cn/a7e0236680b349c68f81e29fd0133971.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBAd2h6aXdlbg==,size_20,color_FFFFFF,t_70,g_se,x_16#pic_center)  
2、安装SciTechDoctor  
安装完Windows 98 SE虚拟机后，启动虚拟机，选择“设备”，“分配光驱”，“选择虚拟盘”，选择  
win98装机.iso，打开光驱，运行sdd-win-7.0.0.340-BETA.EXE，重启后会自动运行SciTechDoctor，选择register Now!，注册信息填Name: CSCKnight Serial: 0B5E-12B4-A8A4-0B（注册信息在SciTechDoctor.iso镜像里regcodes.txt中，可以在虚拟机里打开，复制粘贴，免得输入）。重启后按下图设置：  
![在这里插入图片描述](https://img-blog.csdnimg.cn/ae35dabc1453446e8a4a9eca830acf68.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBAd2h6aXdlbg==,size_20,color_FFFFFF,t_70,g_se,x_16#pic_center)  
![在这里插入图片描述](https://img-blog.csdnimg.cn/cc75d3d71e014e68b7fb0310c1e4ee1b.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBAd2h6aXdlbg==,size_20,color_FFFFFF,t_70,g_se,x_16#pic_center)  
重启后，设置分辨率：  
![在这里插入图片描述](https://img-blog.csdnimg.cn/3a8fc6649afc4a51a1461b44ef2d054e.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBAd2h6aXdlbg==,size_20,color_FFFFFF,t_70,g_se,x_16#pic_center)

设置完分辨率，重启会停留在这个画面：

![在这里插入图片描述](https://img-blog.csdnimg.cn/712fdeba26334eab8122ef42f9b480e9.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBAd2h6aXdlbg==,size_20,color_FFFFFF,t_70,g_se,x_16#pic_center)  
点击“控制”，“重启”，对虚拟机强制重启。启动时选1，正常启动。

这时虚拟机画面显示不出来，再次强制重启。正常进入虚拟机画面。重新设置分辨率。  
![在这里插入图片描述](https://img-blog.csdnimg.cn/66fedce94b5441bb81102fbb182c6f84.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBAd2h6aXdlbg==,size_15,color_FFFFFF,t_70,g_se,x_16#pic_center)  
3、安装Pci System Peripheral

系统安装完后，会在设备管理器里看到有个Pci System Peripheral设备打问号。  
![在这里插入图片描述](https://img-blog.csdnimg.cn/7818de18d01549e2a0ed13a3b5d068a0.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBAd2h6aXdlbg==,size_20,color_FFFFFF,t_70,g_se,x_16#pic_center)  
Pci System Peripheral无法识别是正常的。它是一些 VBox 虚拟化的设备，Win98SE 不是完全受VBox 支持的操作系统。如果是完美主义者，可以用以下方法消除这个问号。  
在Pci System Peripheral上右键，属性，重新安装驱动，选择“显示指定位置所有驱动列表”，选择“系统设备”，MCA bus。  
![在这里插入图片描述](https://img-blog.csdnimg.cn/87871794d2c140a0912afbe196482c0b.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBAd2h6aXdlbg==,size_20,color_FFFFFF,t_70,g_se,x_16#pic_center)  
重新启动系统后，所有设备显示正常。

4、安装对USB设备的支持

要在虚拟机内使用U盘，需要安装VirtualBox扩展包，官网有下载，安装后，USB设备选USB1.1;  
![在这里插入图片描述](https://img-blog.csdnimg.cn/2c5765b7d6274ddebdd90bc30434ec71.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBAd2h6aXdlbg==,size_20,color_FFFFFF,t_70,g_se,x_16#pic_center)

打开设备管理器，通用串行总线控制器，在standerd openhci usb host controller上右键，删除，再点“刷新”，会提示找到新硬件，默认下一步，下一步提示插入win98，安装完驱动后，插入U盘，在虚拟机内挂载U盘，会出现添加新硬件向导；  
![在这里插入图片描述](https://img-blog.csdnimg.cn/30b1891be95845798773b9b62504af2e.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBAd2h6aXdlbg==,size_20,color_FFFFFF,t_70,g_se,x_16#pic_center)  
选择指定安装目录，指向光盘内w95usbflash11目录，安装完驱动，应该可以看到U盘盘符了。注意， win98不认NTFS格式的U盘。

![在这里插入图片描述](https://img-blog.csdnimg.cn/f795ac8e34c64c09b6d10550560c0e22.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBAd2h6aXdlbg==,size_20,color_FFFFFF,t_70,g_se,x_16#pic_center)

5、开启DirectX  
加载win98安装.iso镜像，安装DirectX，以取得对游戏更好的支持，安装完后，DirectX并不能开启，将光盘内D3D文件夹内的三个文件拷贝至windows\\system文件夹内（注意开启文件夹选项内的“显示所有文件”不然看不到文件）。运行C:\\Program Files\\DirectX内的Dxdiag诊断程序，发现DirectX已经开启。  
![在这里插入图片描述](https://img-blog.csdnimg.cn/2916885953bf484bb97c4161761b7b94.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBAd2h6aXdlbg==,size_20,color_FFFFFF,t_70,g_se,x_16#pic_center)

6、其它优化  
删除SciTechDoctor启动画面，转到任务栏“开始”并单击“运行”键入“regedit.exe”打开\[HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run\]删除"Check for SDD updates"="C:\\Program Files\\SciTech Display Doctor\\sddboot.exe。

取消登录对话框，右击网上邻居——属性——把登陆模式改为“WINDOWS登陆”。

win98自带的是IE 5.0，基本上网站都打不开，可以安装 KernelEx，KernelEx一个开源兼容层，旨在允许在 Microsoft Windows 98 和 Microsoft Windows Millennium 操作系统上运行仅 Windows 2000/XP 的应用程序。复制光盘内的unicows.dll到windows\\system，运行光盘内的KernelEx-4.5.2 ,重启电脑。复制光盘内的opera至虚拟机，在opera上右键，按下图设置。  
![在这里插入图片描述](https://img-blog.csdnimg.cn/177d3c4211754a939ff3db86475d4c70.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBAd2h6aXdlbg==,size_20,color_FFFFFF,t_70,g_se,x_16)  
这样设置后，就可以使用不支持win98的opera浏览器了。

已安装好的win98虚拟机成品下载：https://cloud.189.cn/web/share?code=yIzQNnU3I3An
