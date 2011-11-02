set nocompatible
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
behave mswin
set sm
set ai
syntax on
let java_highlight_all=1
let java_highlight_functions="style"
let java_allow_cpp_keywords=1
let java_space_errors = 1
set number
colo ir_black
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1
"au BufRead,BufNewFile * TlistToggle
let g:SuperTabDefaultCompletionType = "context"
"set shellpipe=\|\ tee
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

"keymaps
map <F7> :tabp<CR>
map <F8> :tabn<CR>
map <F12> :tabe %:h<CR>

let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1

