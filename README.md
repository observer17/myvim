# vim配置文件

已升级至vim8. 语法检查使用ale替换syntastic, 编译vim时需要开启job和timers.

## 安装

使用git克隆仓库

```
  $ git clone https://github.com/observer17/myvim.git ~/.vim
  $ ln -s ~/.vim/vimrc ~/.vimrc
```

安装插件管理工具[vundle](https://github.com/junegunn/vim-plug)

## 插件列表

  * [molokai](https://github.com/tomasr/molokai) 配色
  * [NERDTree](https://github.com/scrooloose/nerdtree) 树形目录
  * [nerdcommenter](https://github.com/scrooloose/nerdcommenter) 快捷注释
  * [multiple-cursors](https://github.com/terryma/vim-multiple-cursors) 多行/多列编辑
  * [auto-pair](https://github.com/jiangmiao/auto-pairs) 括号自动补全
  * [coc](https://github.com/neoclide/coc.nvim) host for extension and LSP
  * [tern_for_vim](https://github.com/ternjs/tern_for_vim) 提供js自动补全
  * [ale](https://github.com/w0rp/ale) 语法检查

