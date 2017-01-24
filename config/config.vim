" set runtimepath in windows
if has('win32') || has('win64')
    set rtp+=~/.vim
endif

" guifont
set guifont=DejaVu\ Sans\ Mono:h10
" set guifont=Source\ Code\ Pro\ for\ Powerline:h16
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

" show line numbers
set number

" blink cursor blink
set gcr=a:block-blinkon0

" always show status line
set laststatus=2
" highlight current line and column
set ruler
set cursorline cursorcolumn

" syntax highlighting
syntax on
set t_Co=256
set background=dark

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
endif