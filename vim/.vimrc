call pathogen#infect() 
set nocompatible
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
behave mswin
set backup
set backupdir=/tmp
set dir=/tmp
set sm
set ai
syntax on
let java_highlight_all=1
let java_highlight_functions="style"
let java_allow_cpp_keywords=1
let java_space_errors = 1
set number
set t_Co=256
"colo ir_black
let g:solarized_termcolors=256
set background=dark
"colorscheme solarized
colo cthulhian
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
filetype plugin on
filetype indent on
"keymaps
map <F7> :tabp<CR>
map <F8> :tabn<CR>
map <F12> :tabe %:h<CR>
nmap <F2> :TagbarToggle<CR>
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:closetag_html_style=1 
au BufEnter,BufNew *.txt set spell spelllang=en_gb,fi_fi
let g:syntastic_javascript_checker = 'jshint'
set wildmode=longest:full
set wildmenu
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
 inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" " <C-h>, <BS>: close popup and delete backword char.
 inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
 inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
 inoremap <expr><C-y>  neocomplcache#close_popup()
 inoremap <expr><C-e>  neocomplcache#cancel_popup()




" Enable omni completion. Not required if they are already set elsewhere in .vimrc
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>                                                                                                                        
nmap <silent> <c-j> :wincmd j<CR>                                                                                                                       
nmap <silent> <c-h> :wincmd h<CR>                                                                                                                       
nmap <silent> <c-l> :wincmd l<CR>]

noremap % v%

autocmd vimenter * NERDTree
nmap <F5> :FufFile <CR>
map <F2> :NERDTreeToggle<CR>
map <F9> :SlimuxShellLast<CR>
