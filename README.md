# vimrc
linux/windows vimrc file
===========================

基于`vim7.4`的Linux版本

首先需要添加`Vundle`插件，完成相关插件的自动安装

`Vundle`的安装通过git命令即可
> git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

安装完`Vundle`之后，安装需要的插件。在vim下执行如下命令，开始安装
> :PluginInstall

具体可以参考
[https://github.com/gmarik/Vundle.vim][VD]

其中，`YouCompleteMe`插件的安装较大，需要200M以上空间，需要耐心等待
`YouCompleteMe`的官方链接为
[Valloric/YouCompleteMe][YC]

另外，`YouCompleteMe`在CentOS6.3及以上系统下的编译方法可以参考我之前的笔记
[VIM安装YouCompleteMe][INSTALL]

[VD]:https://github.com/gmarik/Vundle.vim
[YC]:https://github.com/Valloric/YouCompleteMe
[INSTALL]:http://note.youdao.com/share/?id=bba012f66fbab91e4c9fabe4ad6f3e7e&type=note
