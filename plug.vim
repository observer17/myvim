
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" nerdtree 树形文档结构目录
Plug 'scrooloose/nerdtree'
" 快捷注释
Plug 'scrooloose/nerdcommenter'
" theme
Plug 'tomasr/molokai'
Plug 'srcery-colors/srcery-vim'
Plug 'pineapplegiant/spaceduck'
Plug 'ayu-theme/ayu-vim'
" 可视化缩进
Plug 'Yggdroot/indentLine'
" 多行/多列编辑
Plug 'terryma/vim-multiple-cursors'
" vim-ack
Plug 'mileszs/ack.vim'
" 文本对齐插件, 可按等号、冒号、表格等来对齐文本
Plug 'godlygeek/tabular'
" 括号自动补全
Plug 'jiangmiao/auto-pairs'
" airline
Plug 'bling/vim-airline'
" vim-fugitive
Plug 'tpope/vim-fugitive'
" surround
Plug 'tpope/vim-surround'
" conque term
Plug 'rosenfeld/conque-term'
" ternjs js补全
Plug 'ternjs/tern_for_vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" syntax highlight
" vue
Plug 'posva/vim-vue'
" typescript
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
"less
"Plug 'groenewege/vim-less'
" json
Plug 'elzr/vim-json'
"rust
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
"tmux
Plug 'keith/tmux.vim'
" color
Plug 'ap/vim-css-color'

" syntax checking
" ale
"Plug 'w0rp/ale'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'


" All of your Plugins must be added before the following line
call plug#end()            " required
