set nocompatible              " required
filetype off

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
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Yggdroot/indentLine'
" emmet
Plugin 'mattn/emmet-vim'
" 多行/多列编辑
Plugin 'terryma/vim-multiple-cursors'
" 根据上下文进行补全
Plugin 'Shougo/neocomplcache'
" 文件及buffer模糊查询，快速打开文件
Plugin 'kien/ctrlp.vim'
" 文本对齐插件, 可按等号、冒号、表格等来对齐文本
Plugin 'godlygeek/tabular'
" 括号自动补全
Plugin 'jiangmiao/auto-pairs'
" jsbeautify
Plugin 'vim-scripts/jsbeautify'
" 语法高亮
" slim
Plugin 'slim-template/vim-slim.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" 一定要放在语法高亮插件安装之后
syntax enable
filetype plugin indent on

set autoindent
set cindent

" 配色
" Javascript syntax highlight
syntax enable

" Set syntax highlighting for specific file types
autocmd BufRead,BufNewFile Appraisals set filetype=ruby
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd Syntax javascript set syntax=jquery

" Color scheme
colorscheme molokai



" 排版
" 禁止光标闪烁
set gcr=a:block-blinkon0

" 禁止显示滚动条
"set guioptions-=l
"set guioptions-=L
"set guioptions-=r
"set guioptions-=R

" 禁止显示菜单和工具条
"set guioptions-=m
"set guioptions-=T

" 设置字体
set guifont=Monaco:h13

" 显示状态栏
set laststatus=2
" 显示当前光标位置
set ruler
" 显示行号
set number
set numberwidth=4
" 高亮当前行/列
set cursorline
set cursorcolumn
" 高亮搜索结果
set hlsearch
" 禁止折行
set nowrap
" 语法高亮
syntax enable
syntax on
" 输入命令时列出匹配项目
set wildmenu

" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=2
" 设置格式化时制表符占用空格数
set shiftwidth=2
" 将连续数量的空格视为一个制表符
set softtabstop=2

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1
" vim-indent-guides
" 随vim自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent><Leader>i <Plug>IndentGuidesToggle

" 基于缩进或语法你行代码折叠
" set foldmethod=indent
set foldmethod=syntax
" 启动vim时关闭折叠代码
set nofoldenable

" 匹配括号的规则
set matchpairs=(:),{:},[:],<:>


" neocomplcache
" Disable AutoComplPop
let g:acp_enableAtStartup = 0
" use neocomplcache
let g:neocomplcache_enable_at_startup = 1
" use smartcase
let g:neocomplcache_enable_smart_case = 1
" set minimum syntax keyword length
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
 let g:neocomplcache_dictionary_filetype_lists = {
  \ 'default' : '',
  \ 'vimshell' : $HOME.'/.vimshell_hist',
  \ 'scheme' : $HOME.'/.gosh_completions'
 \}

" Define keyword
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mapping 
inoremap <expr><C-g>  neocomplcache#undo_completion()
inoremap <expr><C-l>  neocomplcache#completion_common_string()


" nerdtree
" 启动快捷键
map <C-t> :NERDTreeToggle<CR>
let NERDChristmasTree=0
" 窗口大小
let NERDTreeWinSize=35
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
" 窗口位置
let NERDTreeWinPos='left'



" ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif  " MacOS/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" 状态栏
set laststatus=2
