" Start plugins definition
call plug#begin(g:pluggedDir)

" colorscheme
" Plug 'altercation/vim-colors-solarized'
" Plug 'tomasr/molokai'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'roosta/srcery'
" status bar
Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'scrooloose/nerdcommenter'
" git wrapper
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'editorconfig/editorconfig-vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'scrooloose/syntastic'
Plug 'junegunn/vim-easy-align'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-scripts/DrawIt'
Plug 'maksimr/vim-jsbeautify'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'tpope/vim-surround'
Plug 'elzr/vim-json'
" JS es5/es6 syntax
Plug 'othree/yajs.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'othree/html5.vim'
Plug 'nathanaelkane/vim-indent-guides'
" Plug 'Valloric/YouCompleteMe'
Plug 'moll/vim-node'
Plug 'syngan/vim-vimlint'
Plug 'ynkdir/vim-vimlparser'
Plug 'mattn/emmet-vim'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'clones/vim-fuzzyfinder'
Plug 'vim-scripts/L9'
Plug 'jbgutierrez/vim-babel'
Plug 'kshenoy/vim-signature'
Plug 'gcmt/wildfire.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'tpope/vim-fugitive'

call plug#end()

