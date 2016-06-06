set nocompatible              " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" vundle 插件管理
Plugin 'gmarik/Vundle.vim'
" nerdtree 树形文档结构目录
Plugin 'scrooloose/nerdtree'
" 快捷注释
Plugin 'scrooloose/nerdcommenter'
" molokai配色方案
Plugin 'tomasr/molokai'
" 可视化缩进
Plugin 'Yggdroot/indentLine'
" 多行/多列编辑
Plugin 'terryma/vim-multiple-cursors'
" 文件及buffer模糊查询，快速打开文件
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimproc.vim'
" 文本对齐插件, 可按等号、冒号、表格等来对齐文本
Plugin 'godlygeek/tabular'
" 括号自动补全
Plugin 'jiangmiao/auto-pairs'
" jsbeautify
Plugin 'vim-scripts/jsbeautify'
" airline
Plugin 'bling/vim-airline'
" vim-fugitive
Plugin 'tpope/vim-fugitive'
" surround
Plugin 'tpope/vim-surround'
" conque term
Plugin 'rosenfeld/conque-term'
" taglist
Plugin 'vim-scripts/taglist.vim'
" youcompleteme
Plugin 'Valloric/YouCompleteMe'
" ternjs js补全
Plugin 'ternjs/tern_for_vim'

" syntax highlight
" vue
Plugin 'posva/vim-vue'
" javascript
Plugin 'pangloss/vim-javascript'
" jsx
Plugin 'mxw/vim-jsx'
" slim
Plugin 'slim-template/vim-slim.git'
" pug(jade)
Plugin 'digitaltoad/vim-pug'
"less
Plugin 'groenewege/vim-less'
" json
Plugin 'elzr/vim-json'
" elm
Plugin 'lambdatoast/elm.vim'

" syntax checking
" syntastic
Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
