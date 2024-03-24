set bg=dark
set mouse=a

" Line numbers
set relativenumber

" Spell checking
set spell
setlocal spell spelllang=en_nz

" Syntax Highlighting
filetype plugin on
syntax on

" Indentation
filetype indent on

" Visual wrapping
autocmd FileType python set breakindentopt=shift:2

" Traverse line breaks with arrow keys
set whichwrap=b,s,<,>,[,]

" On pressing tab, insert 2 spaces
set expandtab

" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2

" when indenting with '>', use 2 spaces width
set shiftwidth=2
