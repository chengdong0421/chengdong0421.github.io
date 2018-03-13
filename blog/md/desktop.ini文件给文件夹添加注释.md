#[windows]用Desktop.ini自定义文件夹属性#
---
<script type="text/javascript" src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=default"></script>

###0x00 Desktop.ini文件介绍
desktop.ini是系统可识别的一个文件，作用是存储用户对文件夹的个性设置（用户更换文件夹图标等等都会生成desktop.ini）

###0x01 给文件夹添加注释

文件夹注释是指在用鼠标指向文件夹时自动显示的说明信息，该信息可以自定义。  
实现步骤：  

**01.** 在目标文件夹内新建文本文档，更名为[Desktop.ini](https://baike.baidu.com/item/DESKTOP.INI/11001208?fr=aladdin)。用记事本打开，输入以下内容后保存：  

    [.ShellClassInfo]  
    InfoTip="说明文字"  
 
**02.** 保存后，需要设置Desktop.ini文件的属性(添加系统文件属性)。如下：  
&emsp;&emsp;1. Win+R -> 输入cmd，回车，打开命令提示符。  
&emsp;&emsp;2. 输入 `attrib desktop.ini文件路径 +s` 回车。  
这样就将Desktop.ini添加了系统文件属性。（也可以将Desktop.ini文件设为隐藏文件：输入 `attrib desktop.ini文件路径 +h` 回车）  

**03.** 将目标文件夹添加R属性：  
&emsp;&emsp;1. Win+R -> 输入cmd，回车，打开命令提示符。   
&emsp;&emsp;2. 输入 `attrib 目标文件夹路径 +r` 回车。  

&emsp;&emsp;操作完成后，文件夹就被添加了注释信息，当鼠标指向文件夹时，信息就会显示。  

下载[addInfoTip.bat](https://chengdong0421.github.io/files/setInfoTip.bat)，放到需要添加注释的文件夹内，双击执行，可以快速设置注释。