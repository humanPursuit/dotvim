filetype plugin on

" define path according platform
let g:vimDir = $HOME.'/.vim'
let g:pluggedDir = g:vimDir.'/plugins/plugged'

let s:pluginDir = g:pluggedDir
let s:pluginDef = g:vimDir.'/plugins/def.vim'
let s:pluginConf = g:vimDir.'/plugins/config.vim'

let s:configSetting = g:vimDir.'/config/config.vim'
let s:configMapping = g:vimDir.'/config/mapping.vim'

" set runtimepath in windows
if has('win32') || has('win64')
    set rtp+=~/.vim
endif

if !isdirectory(s:pluginDir)
    " Install plugins
    exec ":source ".s:pluginDef
    autocmd VimEnter * PlugInstall
else 
    " Loads plugins def and config
    exec ":source ".s:pluginDef
    exec ":source ".s:pluginConf

    " Loads the global config, mapping and settings
    exec ":source ".s:configSetting
    exec ":source ".s:configMapping
endif
