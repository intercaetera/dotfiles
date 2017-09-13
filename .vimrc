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

" Word wrap
set wrap
set linebreak

" syntastic
let g:syntastic_javascript_checkers = ['eslint'] 

" word wrap
set wrap linebreak nolist

" jsx
let g:jsx_ext_required = 0

" colorscheme
colorscheme wal

" notes
let g:notes_directories = ['~/Documents/notes']

" cursor
if has("autocmd")
	au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
	au InsertEnter,InsertChange *
		\ if v:insertmode == 'i' | 
		\   silent execute '!echo -ne "\e[6 q"' | redraw! |
		\ elseif v:insertmode == 'r' |
		\   silent execute '!echo -ne "\e[4 q"' | redraw! |
		\ endif
	au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif
