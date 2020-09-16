# 在Linux上搭建KMS服务器

KMS服务器软件vlmcsd Github主页：https://github.com/Wind4/vlmcsd

`不稳定性说明 您的服务器出现任何问题本人与服务器程序作者均不承担任何责任。`

根据自己的服务器操作系统运行对应的脚本。

CentOS，Redhat，Fedora等请选择CentOS脚本

Debian，Ubuntu，Mint等请选择Debian脚本

## kms.sh管理脚本的使用

如果您使用这里的一键脚本安装，即可完美使用该脚本，否则需要手动更改可执行文件存放路径

只有start/stop/restart/status的功能，直接执行即可

./kms.sh start

### 示例部署

```nginx
#CentOS，Redhat，Fedora等请选择CentOS脚本
wget https://raw.githubusercontent.com/wangsihan1/KMS/master/kms-centos.sh
chmod +x kms-centos.sh
./kms-centos.sh

#Debian，Ubuntu，Mint等请选择Debian脚本
wget https://raw.githubusercontent.com/wangsihan1/KMS/master/kms-debian.sh
chmod +x kms-debian.sh
./kms-debian.sh

#启动KMS
wget https://raw.githubusercontent.com/wangsihan1/KMS/master/kms.sh
chmod +x kms.sh
./kms.sh start
```

+ 注意！  服务器需放行1688端口  ！


### 激活windows示例

系统需为VL版本，使用管理员权限运行cmd

```nginx
slmgr /skms ip  #ip为你KMS的IP地址或者域名 
slmgr /ato
slmgr /xpr
```

### 激活office示例

Office必须是VOL版本，否则无法激活。

找到你的Office安装目录，如果你不知道你的Office装在哪个目录，可以鼠标右键一个程序图标比如Word，然后选择“打开文件所在的位置”，在上面地址栏就可以看到了。

这里以Office2016为例，32位文件夹目录为`C:\Program Files (x86)\Microsoft Office\Office16`。64位目录为`C:\Program Files\Microsoft Office\Office16`。关于文件夹对应的版本说明：Office16是Office2016，Office15就是Office2013，Office14就是Office2010。

下面以32位为参考。使用管理员权限运行cmd，运行以下命令：

```nginx
#进入Office文件夹执行命令
cd "C:\Program Files (x86)\Microsoft Office\Office16"
cscript ospp.vbs /sethst:ip  #ip为你KMS的IP地址或者域名
cscript ospp.vbs /act
```

如果提示看到successful的字样，那么就是激活成功了，重新打开Office就好。

##### win10专业版
```
slmgr /skms kms.biubixin.com
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
slmgr /ato
slmgr /xpr
```



卸载密匙操作，视情况而定
```
slmgr.vbs /upk
```

”运行“（win+R）中输入  可查看win版本信息    （不是cmd）
```
slmgr.vbs -dlv
```

#### office2019专业增强版

官方下载地址：
http://officecdn.microsoft.com/pr/492350f6-3a01-4f97-b9c0-c7c6ddf67d60/media/zh-cn/ProPlus2019Retail.img

+ 双击office2019.bat        出现Complete就已经激活成功。


















Over  



本项目只做个人学习研究之用，不得用于商业用途！
若资金允许，请点击[链接](https://www.microsoftstore.com.cn/c/office)购买正版，谢谢合作！

