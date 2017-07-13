execute pathogen#infect()
syntax on
filetype plugin indent on

" Line numbers + color
set number
highlight LineNr ctermfg=8

" Tab width (spaces are for fags)
set tabstop=4
set shiftwidth=4
set softtabstop=4

" syntastic
let g:syntastic_javascript_checkers = ['standard'] 
