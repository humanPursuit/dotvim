filetype plugin on

" define path according platform
let g:vimDir = $HOME.'/.vim'
let g:pluggedDir = $HOME.'/.vim/plugins/plugged'

let s:pluginDir = g:vimDir.'/plugins/plugged'
let s:pluginDef = g:vimDir.'/plugins/def.vim'
let s:pluginConf = g:vimDir.'/plugins/config.vim'

let s:configSetting = g:vimDir.'/config/config.vim'
let s:configMapping = g:vimDir.'/config/mapping.vim'

" Loads the global config, mapping and settings
exec ":source ".s:configSetting
exec ":source ".s:configMapping

" Loads plugins def and config
exec ":source ".s:pluginDef
exec ":source ".s:pluginConf