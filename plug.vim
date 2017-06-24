
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" nerdtree 树形文档结构目录
Plug 'scrooloose/nerdtree'
" 快捷注释
Plug 'scrooloose/nerdcommenter'
" theme
Plug 'tomasr/molokai'
Plug 'jacoborus/tender.vim'
" 可视化缩进
Plug 'Yggdroot/indentLine'
" 多行/多列编辑
Plug 'terryma/vim-multiple-cursors'
" 文件及buffer模糊查询，快速打开文件
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc.vim'
" vim-ack
Plug 'mileszs/ack.vim'
" 文本对齐插件, 可按等号、冒号、表格等来对齐文本
Plug 'godlygeek/tabular'
" 括号自动补全
Plug 'jiangmiao/auto-pairs'
" jsbeautify
Plug 'vim-scripts/jsbeautify'
" airline
Plug 'bling/vim-airline'
" vim-fugitive
Plug 'tpope/vim-fugitive'
" surround
Plug 'tpope/vim-surround'
" conque term
Plug 'rosenfeld/conque-term'
" taglist
Plug 'vim-scripts/taglist.vim'
Plug 'majutsushi/tagbar'
" youcompleteme
Plug 'Valloric/YouCompleteMe'
" ternjs js补全
Plug 'ternjs/tern_for_vim'

" syntax highlight
" vue
Plug 'posva/vim-vue'
" javascript
Plug 'pangloss/vim-javascript'
" typescript
Plug 'leafgarland/typescript-vim'
" jsx
Plug 'mxw/vim-jsx'
" pug(jade)
Plug 'digitaltoad/vim-pug'
"less
Plug 'groenewege/vim-less'
" json
Plug 'elzr/vim-json'
" elm
Plug 'lambdatoast/elm.vim'
"rust
Plug 'rust-lang/rust.vim'
"stylus
Plug 'wavded/vim-stylus'
"tmux
Plug 'keith/tmux.vim'
" color
Plug 'ap/vim-css-color'

" syntax checking
" ale
Plug 'w0rp/ale'
" snippet
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" React code snippets
Plug 'epilande/vim-react-snippets'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'


" All of your Plugins must be added before the following line
call plug#end()            " required
