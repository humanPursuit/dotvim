" guifont
if has('win32') || has('win64')
    set guifont=DejaVu\ Sans\ Mono:h10
elseif has('mac')
    set guifont=Source\ Code\ Pro\ for\ Powerline:h16
endif


" set guifont=Liberation\ Mono\ for\ Powerline\ 10

" Configuration: global settings
set nocompatible
" wrap end of line
set wrap
" shortmess
set shortmess=atI
" noswap nobackup
set noswapfile nobackup

set encoding=utf-8
set fileformat=unix
" cursor
set gcr=a:block-blinkon0

hi Normal ctermfg=252 ctermbg=none

" show line numbers
set number
" ruler
set ruler
" highlight current line
set cursorline
" highlight current column
" set cursorcolumn

" syntax highlighting
syntax on
set t_Co=256
set background=dark
colorscheme onehalfdark

" indent
set smartindent
set autoindent
set copyindent
set shiftwidth=4
set shiftround
set backspace=indent,eol,start
set smarttab
set expandtab

" search
set showmatch
set smartcase

set hlsearch
set incsearch

" mouse
set mouse=""

" copy/paste
" set paste
" cross-platform setting ref: http://stackoverflow.com/questions/30691466/what-is-difference-between-vims-clipboard-unnamed-and-unnamedplus-settings
set clipboard^=unnamed,unnamedplus

" folding mode
" set foldmethod=manual
set foldmethod=syntax

" Configuration for GUI
if has('gui_running')
    " disable scrollbar
    set guioptions-=l
    set guioptions-=L
    set guioptions-=r
    set guioptions-=R
    " remove menu and tool bar
    set guioptions-=m
    set guioptions-=T
	" fullScreen when start up
	autocmd VimEnter * simalt ~x
endif
