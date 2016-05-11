" use vundle for vim plugin management
source ~/.vim/vundle.vim

" 一定要放在语法高亮插件安装之后
syntax enable
filetype plugin indent on

set autoindent
set cindent

" Color
colorscheme molokai

" Set syntax highlighting for specific file types
autocmd BufRead,BufNewFile Appraisals set filetype=ruby
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd Syntax javascript set syntax=jquery

" syntax highlighting
" vim-javascript
let g:javascript_enable_domhtmlcss = 1

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
" 显示相对行号
set relativenumber
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


" key map
" mapleader
let mapleader = ";"
" 分屏切换
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
" 快速打开vimrc文件
nnoremap <leader>v :vs $MYVIMRC<CR>
" 重读vimrc文件
nnoremap <leader>sv :source $MYVIMRC<CR>
" 快速输入命令
nnoremap <space> :

" indentLine
let g:indentLine_loaded = 1
let g:indentLine_enabled = 1
let g:indentLine_color_term = 220
let g:indentLine_color_gui = '#ffffff'
let g:indentLine_color_tty_dark = 1
let g:indentLine_color_tty_light = 7
let g:indentLine_bufNameExclude = ['NERD_tree.*']

" 基于缩进的代码折叠
set foldmethod=indent
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
" ignore
let NERDTreeIgnore = ['^node_modules$[[dir]]']

" unite
" enable yank history
let g:unite_source_history_yank_enable = 1
" fuzzy match
call unite#filters#matcher_default#use(['matcher_fuzzy'])
"nnoremap <C-v> :Unite history/yank<CR>
nnoremap <leader>fc :Unite -start-insert file_rec/async<CR>
nnoremap <leader>fs :Unite -start-insert -default-action=below file_rec/async<CR>
nnoremap <leader>fv :Unite -start-insert -default-action=right file_rec/async<CR>
nnoremap <leader>ft :Unite -start-insert -default-action=tabopen file_rec/async<CR>

" airline
set laststatus=2
" branch
let g:airline#extensions#branch#enabled = 1
let g:ariline#extensions#branch#displayed_head_limit = 10
" tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '>'
let g:airline#extensions#tabline#right_sep = '<'
let g:airline#extensions#tabline#show_close_button = 0

" fugitive
nnoremap <silent> <Leader>gs :Gstatus<CR>
nnoremap <silent> <Leader>gd :Gdiff<CR>
nnoremap <silent> <Leader>gc :Gcommit<CR>
nnoremap <silent> <Leader>gl :Glog<CR>
nnoremap <silent> <Leader>gp :Gpush<CR>
nnoremap <silent> <Leader>gb :Gblame<CR>

" tabularize
nmap <Leader>ta& :Tabularize /&<CR>
vmap <Leader>ta& :Tabularize /&<CR>
nmap <Leader>ta= :Tabularize /^[^=]*\zs=<CR>
vmap <Leader>ta= :Tabularize /^[^=]*\zs=<CR>
nmap <Leader>ta: :Tabularize /:<CR>
vmap <Leader>ta: :Tabularize /:<CR>
nmap <Leader>ta, :Tabularize /,<CR>
vmap <Leader>ta, :Tabularize /,<CR>

" 保存时自动移除行尾空格
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z`"
endfunc
autocmd  BufWrite * :call DeleteTrailingWS()
