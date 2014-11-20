## Vimconf

[@招牌疯子](http://weibo.com/buaazp) 

### 概述

我自己使用的Vim插件和配置文件，适用于C/C++/Go开发者。

此配置在MAC OS X、Ubuntu、CentOS上都兼容，用起来很顺手。附上一张截图：

![screenshot](http://ww2.sinaimg.cn/large/4c422e03jw1emhb8kwz0bj212o0olteu.jpg)

在配置中写了大量注释应该足以使你明白相关的功能，若还有疑问可以邮箱联系：`zp@buaa.us`

### 安装使用


```
git clone https://github.com/buaazp/vimconf --depth=1
cd vimconf
cp vimrc ~/.vimrc
cp -r vim ~/.vim

//run VIM and install vim plugins
vim
Press F6
```

#### 注意！

由于使用了[neocomplete](https://github.com/Shougo/neocomplete.vim)插件来自动补全，它要求vim版本为7.3.885+，而且要求编译选项支持lua，所以建议自己安装最新版本的vim并开启支持lua的编译选项。测试你的vim是否支持lua可以在vim中输入`:echo has("lua")`命令，如果返回`1`，那就是支持。

Mac下自定义安装vim使用brew即可：

```
brew install vim --with-lua
```

如果你的机器实在安装不了新版本的vim，可以退而求其次修改~/.vimrc中下面两行，将neocomplete这一行注释掉，并取消neocomplcache这一行的注释。这样则使用功能比较弱的[neocomplcache](https://github.com/Shougo/neocomplcache.vim)插件来进行自动补全。

```
Plug 'Shougo/neocomplcache.vim'
" Plug 'Shougo/neocomplete.vim'
```

#### 常用快捷键

注：如果有自己的需要在配置文件中修改

```
Tab           Insert模式下自动补全
F2            打开文件浏览窗口
F3+a/f/b/l    Dox添加注释
Ctrl+ww       在打开多个窗口之间切换，在顶部的标签页上按d是关闭，回车是进入
Tab/Shift+Tab Normal模式下多buffer切换
F4            打开函数列表
F6            安装插件
F9            切换代码/头文件
F11           切换paste模式（粘贴从别处复制过来的代码时不会因为自动缩进而乱掉格式）
F12           打开/关闭行号
v             选择模式
回车          选择模式下选中一段代码后按回车，之后输入一个关键字符（如=）可根据此符号自动对齐
zf            选中一段代码后将其折叠起来
空格          在折叠位置打开折叠段
Ctrl+v        垂直选中
I             垂直选中之后多行插入
Ctrl+]        跳转到定义处，基于ctags
Ctrl+t        跳回到调用出（这两个组合起来看代码简直爽）
gd            Golang代码中跳转到任意对象的定义处，基于godef
Ctrl+p        打开模糊搜索
```
其他的快捷键基本没改，会用Vim的都没问题。

### 其他开发配件

多年Mac和Linux的使用沉淀下来了一套自己的习惯，每当登录一台新的服务器时都要先安装配置一遍，但是这些并非每个人都喜欢或者都用的顺手，纯属个人喜好了。

#### shell - fish [Download](http://fishshell.com/)

> 我觉得最好用的自动补全功能，比起zsh都要快一万倍  
> 对于新手来说一个重要的变化是，设置环境变量不再是export PATH=XXX这种方式，而是直接赋值：set -x PATH /sbin /usr/local/bin $PATH

#### multiplexer - tmux [Download](http://tmux.sourceforge.net/)

> 从screen转换过来的，第一次用就喜欢上了  
> 比起screen最大的优点是可以在配置文件里自定义很多功能  
> 分屏功能简直逆天！  

Mac下的iterm2直接支持tmux，登录服务器后直接用`cmd+t`新建标签就是一个新窗口，无需重新登录通道机，下次登录后运行一个`tmux -CC attach`即可瞬间回到上次离开时的状态，所有打开的窗口都自动还原，不要太爽！

<s>我把自己的tmux配置文件也放在此包内，需要使用的执行以下命令即可：

```
cd vimconf
cp tmux.conf ~/.tmux.conf
```
</s>


