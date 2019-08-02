1.直接将resources_cn.jar复制到..\IntelliJ IDEA\lib目录即可
2.或者
A、将.\IntelliJ IDEA 2018\lib目录下的resources_en.jar文件复制出来，并更名为resources_cn.jar。
B、双击打开resources_cn.jar（注意是打开而不是解压出来），
将下载的汉化包zh_CN目录下的所有文件拖到刚才打开的resources_cn.jar文件内的messages目录中，并保存。
C、将resources_cn.jar文件复制回.\IntelliJ IDEA\lib目录。

中文乱码
如果打开后显示乱码，请先删除resources_cn.jar，然后打开intellij idea 2018，在菜单上依次选择
File -> Settings -> Appearance&Behavior -> Appearance -> 选中Override default fonts by(not recommended)
Name: Microsoft YaHei (选择任意中文字体)
然后将resources_cn.jar 复制到 .\lib 目录，重新打开intellij idea 2018就能正常显示中文了