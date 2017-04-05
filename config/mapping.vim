" Configuration: mapping

" leader
let g:mapleader = ","
let g:localmapleader = "\\"

" Edit and Reload $MYVIMRC
nnoremap <leader>ev :split $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" move the current line below
nnoremap <leader>- ddp
" move the current line above
nnoremap <leader>_ ddkp

" insert mode uppercase the current word
inoremap <c-u> <esc>viwUi

" remove last search highlight
nnoremap <C-l> :nohlsearch<CR><C-l>

" wrap a word in double quotes
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
" wrap a word in single quotes
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

" select inside parents
onoremap in( :<c-u>normal! f(vi(<cr>
" select inside braces
onoremap in{ :<c-u>normal! f{vi{<cr>
" select inside brackets
onoremap in[ :<c-u>normal! f[vi[<cr>

" hardcode mode
" leave insermode (like <esc>) and disable <esc>
inoremap jk <esc>
inoremap <esc> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" cursor move line start and end
nnoremap LB 0
nnoremap LE $

" access to system clipboard
vnoremap <leader>y "+y
nmap <leader>p "+p

nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>WQ :wa<CR>:q<CR>
nnoremap <leader>Q :qa!<CR>

" map to forEach windows
nnoremap nw <c-w><c-w>
nnoremap <leader>lw <c-w>l " right window
nnoremap <leader>hw <c-w>h " left window
nnoremap <leader>kw <c-w>l " top window
nnoremap <leader>jw <c-w>l " bottom window

nnoremap <leader>M % " 结对符跳转

