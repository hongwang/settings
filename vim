syntax on 					" 语法支持



set autoindent

set nu

set smarttab
set tabstop=4
set shiftwidth=4
set expandtab


filetype plugin on
autocmd FileType python set omnifunc=pythoncomplete#Complete
