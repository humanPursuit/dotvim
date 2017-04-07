" Configuration: Plugins configuration

" [> Colortheme molokai <]
" original background color
let g:molokai_original = 1
let g:rehash256 = 1

" [> NERDTree <]
" on vim enter opens nerd tree
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

function OpenNerdTree() 
    let s:exclude = ['COMMIT_EDITMSG', 'MERGE_MSG']
    if index(s:exclude, expand('%:t')) < 0
        NERDTreeFind
        " back to editing window
        exec "normal! \<c-w>\<c-w>"
    endif
endfunction

" on vim enter opens nerd tree
autocmd VimEnter * call OpenNerdTree()

nnoremap <c-n> :NERDTreeToggle<cr>

" nerdtree window size
let g:NERDTreeWinSize = 35

" show hidden files
let g:NERDTreeShowHidden = 1

" single click to open nodes
"let g:NERDTreeMouseMode=3

" ignored files
let g:NERDTreeIgnore=['\.swp$', '\~$']

" [> NERDCommenter <]
noremap <c-_> :call NERDComment(0, "Toggle")<cr>

" [> Airline <]

" status line always opened
set laststatus=2

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"  powerline font, disable, don't want to install extra fonts'
" let g:airline_powerline_fonts=1

let g:airline_theme='onehalfdark'

" [> EditorConfig <]

" to avoid issues with fugitive
" let g:EditorConfig_exclude_patterns = ['fugitive://.*']
let g:config_Beautifier = {}
let g:config_Beautifier['js'] = {}
let g:config_Beautifier['js'].indent_size = '2'

" [> EasyAlign <]

vnoremap ga <Plug>(EasyAlign)

nnoremap ga <Plug>(EasyAlign)

" select paragraph and start easyalign on the left
nnoremap <leader>a vip<Plug>(EasyAlign)<cr>

" Start interactive align to the right
vmap <leader>a <Plug>(EasyAlign)<cr><right>

let g:easy_align_ignore_groups = ['Comment']


" [> multiple cursor <]

let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<esc>'


" [> JsBeautify <]

" format selection
autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
autocmd FileType json vnoremap <buffer>  <c-f> :call RangeJsonBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>

" format the whole file
autocmd FileType javascript nnoremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType json nnoremap <buffer>  <c-f> :call JsonBeautify()<cr>
autocmd FileType html nnoremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css nnoremap <buffer> <c-f> :call CSSBeautify()<cr>

" [> YankStack <]

nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste


" [> Javascript libraries syntax <]

let g:used_javascript_libs = 'jquery,underscore,requirejs,chai,handlebars'

" [> Emmet shortcuts <]
"
au FileType html,css,scss imap <expr>kj  emmet#expandAbbrIntelligent("\<tab>")

" [> wildfile <]
noremap <space> <Plug>(wildfire-fule)
noremap <s-space> <Plug>(wildfire-water)

let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "i>", "ip"]

" [> 'sjl/gundo.vim' <]
nnoremap <Leader>ud :GundoToggle<CR>
