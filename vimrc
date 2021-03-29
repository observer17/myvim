" use vundle for vim plugin management
source ~/.vim/plug.vim

syntax enable
filetype plugin indent on

set autoindent
set cindent


"-------- -------- -------- --------
"               Color
"-------- -------- -------- --------
set termguicolors
" set Vim-specific sequences for RGB colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"colorscheme srcery
"colorscheme molokai
colorscheme ayu
"colorscheme spaceduck


"-------- -------- -------- --------
"               Syntax
"-------- -------- -------- --------
" Set syntax highlighting for specific file types
autocmd BufRead,BufNewFile Appraisals set filetype=ruby
autocmd BufRead,BufNewFile *.md set filetype=markdown

" syntax highlighting
" vim-javascript
let g:javascript_enable_domhtmlcss = 1
" highlight jsx in .js
let g:jsx_ext_required = 0

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
set encoding=utf-8

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
" 将连续数量的空格视为一个制表符
set softtabstop=2
" 设置格式化时制表符占用空格数
set shiftwidth=2

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" enable folding
" 基于缩进的代码折叠
set foldmethod=indent
set nofoldenable

" 匹配括号的规则
set matchpairs=(:),{:},[:],<:>

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
" 切换buffer
nnoremap <C-B> :bp<CR>
nnoremap <C-F> :bn<CR>


"-------- -------- -------- --------
"               Plugin
"-------- -------- -------- --------
" taglist
nnoremap <leader>tt :TlistToggle<CR>
" set ctags
let g:Tlist_Ctags_Cmd='/usr/local/bin/ctags'
" display tags for current active buffer
let Tlist_Show_One_File = 1
"close vim if taglist is the only window
let Tlist_Exit_OnlyWindow = 1
" place taglist window on the right side
let Tlist_Use_Right_Window = 1

" indentLine
let g:indentLine_loaded = 1
let g:indentLine_enabled = 1
let g:indentLine_color_term = 220
let g:indentLine_color_gui = '#ffffff'
let g:indentLine_color_tty_dark = 1
let g:indentLine_color_tty_light = 7
let g:indentLine_bufNameExclude = ['NERD_tree.*']

" nerdtree
" 启动快捷键
map <Leader>fe :NERDTreeToggle<CR>
let NERDChristmasTree=0
" 窗口大小
let NERDTreeWinSize=35
let NERDTreeChDirMode=2
" ignore
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$', '^node_modules$[[dir]]']
let NERDTreeShowBookmarks=1
" 窗口位置
let NERDTreeWinPos='left'

" unite
" enable yank history
let g:unite_source_history_yank_enable = 1
"nnoremap <C-v> :Unite history/yank<CR>
nnoremap <leader>uc :Unite  file_rec/async<CR>
nnoremap <leader>us :Unite  -default-action=below file/async<CR>
nnoremap <leader>uv :Unite  -default-action=right file/async<CR>
nnoremap <leader>ut :Unite  -default-action=tabopen file/async<CR>

" airline
set laststatus=2
" branch
let g:airline#extensions#branch#enabled = 1
let g:ariline#extensions#branch#displayed_head_limit = 10
" tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
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
nnoremap <silent> <Leader>gw :Gwrite<CR>
nnoremap <silent> <Leader>gl :Gllog<CR>
nnoremap <silent> <Leader>gpl :Gpull<CR>
nnoremap <silent> <Leader>gps :Gpush<CR>
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

" ale (syntas check tool)
let g:ale_completion_enabled = 1
let g:ale_linters = {
     \ 'javascript': ['eslint'],
     \ 'typescript': ['tsserver', 'tslint']
     \}
let g:ale_fixers = { 'javascript': ['eslint'] }

" coc
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c

" clang-format

" use tab for trigger completion
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "<C-p>" : "\<C-h>"

func! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~# '\s'
endfunc

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"Tern
nnoremap <Leader>trdf :TernDef<CR>
nnoremap <Leader>trdc :TernDoc<CR>
nnoremap <Leader>trty :TernType<CR>
nnoremap <Leader>trrn :TernRename<CR>

" Ack
" tell ack to use ripgrep
if executable('rg')
 let g:ackprg = 'rg --vimgrep --no-heading'
endif

" fzf
let g:fzf_layout = { 'down': '~30%' }

func! ContextualFZF()
 " Determine if inside a git repo
 silent exec "!git rev-parse --show-toplevel"
 redraw!

 if v:shell_error
   " Search in current directory
   call fzf#run({
     \'sink': 'e'
   \ })
 else
   " Search in entire git repo
   call fzf#run({
     \'source': 'git ls-tree --full-tree --name-only -r HEAD',
     \'sink': 'e'
   \ })
 endif
endfunc

func! s:buflist()
 redir => ls
 silent ls
 redir END
 return split(ls, '\n')
endfunc

func! s:bufopen(e)
 execute 'buffer' matchstr(a:e, '^[ 0-9 ]*')
endfunc

map <C-p> :call ContextualFZF()<CR>
map <C-p> :call fzf#run(fzf#wrap({ 'down': '30%' }))<CR>

nnoremap <silent> <Leader><Enter> :call fzf#run({
 \ 'source': reverse(<sid>buflist()),
 \ 'sink': function('<sid>bufopen'),
 \ 'options': '+m',
 \ 'down': len(<sid>buflist()) + 2
 \ })<CR>


"-------- -------- -------- --------
"              Funtion
"-------- -------- -------- --------
" 保存时自动移除行尾空格
func! DeleteTrailingWS()
 exe "normal mz"
 %s/\s\+$//ge
 exe "normal `z`"
endfunc
autocmd  BufWrite * :call DeleteTrailingWS()

" About search
" In file search
vnoremap // y/<c-r>"<cr>
" Ack search
vnoremap \\ y:Ack! <c-r>"<cr>
