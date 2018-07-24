execute pathogen#infect()
syntax on
filetype plugin indent on

" Line numbers + color
set number
highlight LineNr ctermfg=8

" tabs and spaces
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" swap files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Word wrap
set wrap
set linebreak

" copy
set clipboard=unnamed

" unfuck backspace
set backspace=indent,eol,start

" closetag
let g:closetag_filenames = '*.html,*.vue'

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint'] 

let g:syntastic_error_symbol = '✗✗'
let g:syntastic_style_error_symbol = '✠✠'
let g:syntastic_warning_symbol = '∆∆'
let g:syntastic_style_warning_symbol = '≈≈'

" word wrap
set wrap linebreak nolist

" jsx
let g:jsx_ext_required = 0

" colorscheme
colorscheme wal

" gutentags
let g:gutentags_generate_on_write = 0
let g:gutentags_ctags_exclude = [ 'node_modules/**' ]

" language server
if executable('typescript-language-server')
    au User lsp_setup call lsp#register_server({
      \ 'name': 'typescript-language-server',
      \ 'cmd': { server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
      \ 'root_uri': { server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_directory(lsp#utils#get_buffer_path(), '.git/..'))},
      \ 'whitelist': ['typescript', 'javascript', 'javascript.jsx']
      \ })
endif

" fixjs
let g:fixmyjs_engine = 'eslint'
noremap <Leader><Leader>f :Fixmyjs<CR>

" cursor
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
" if has("autocmd")
" 	au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
" 	au InsertEnter,InsertChange *
" 		\ if v:insertmode == 'i' | 
" 		\   silent execute '!echo -ne "\e[6 q"' | redraw! |
" 		\ elseif v:insertmode == 'r' |
" 		\   silent execute '!echo -ne "\e[4 q"' | redraw! |
" 		\ endif
" 	au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
" endif
