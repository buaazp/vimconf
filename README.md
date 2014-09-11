## Vimconf

[@招牌疯子](http://weibo.com/buaazp) 

### 概述

我自己使用的Vim插件和配置文件，适用于C/C++/Go开发者。

此配置在MAC OS X、Ubuntu、CentOS上都兼容，用起来很顺手。附上一张截图：

![screenshot](http://ww4.sinaimg.cn/large/4c422e03jw1eieng4wr6qj212q0oojx7.jpg)

在配置中写了大量注释应该足以使你明白相关的功能，若还有疑问可以邮箱联系：

zp@buaa.us

### 使用

```
git clone https://github.com/buaazp/vimconf --depth=1
cd vimconf
cp vimrc ~/.vimrc
cp -r vim ~/.vim
```

#### 常用快捷键

注：如果有自己的需要在配置文件中修改

```
Tab 自动补全
F2 打开文件浏览窗口
Ctrl+ww 在打开多个文件之间切换，tab上按d是关闭，回车是进入
F4 打开函数列表
F9 切换代码/头文件
F11 切换paste模式（粘贴从别处复制过来的代码时不会因为自动缩进而乱掉格式）
F12 打开/关闭行号
v 选择模式
zf 选中一段代码后将其折叠起来
空格 在折叠位置打开折叠段
Ctrl+v 垂直选中
I 垂直选中之后多行插入
Ctrl+] 跳转到定义处
Ctrl+t 跳回到调用出（这两个组合起来看代码简直爽）
```
其他的快捷键基本没改，会用Vim的都没问题。

### 配件

多年Mac和Linux的使用沉淀下来了一套自己的习惯，每当登录一台新的服务器时都要先安装配置一遍，但是这些并非每个人都喜欢或者都用的顺手，纯属个人喜好了。

#### shell - fish [Download](http://fishshell.com/)

> 我觉得最好用的自动补全功能，比起zsh都要快一万倍  
> 对于新手来说一个重要的变化是，设置环境变量不再是export PATH=XXX这种方式，而是直接赋值：set -x PATH /sbin /usr/local/bin $PATH

#### multiplexer - tmux [Download](http://tmux.sourceforge.net/)

> 从screen转换过来的，第一次用就喜欢上了  
> 比起screen最大的优点是可以在配置文件里自定义很多功能  
> 分屏功能简直逆天！




