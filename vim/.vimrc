set sessionoptions-=options
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'https://github.com/rking/ag.vim.git'
Plugin 'neocomplcache'
Plugin 'rainbow_parentheses.vim'
Plugin 'Solarized'
Plugin 'closetag.vim'
Plugin 'CSApprox'
Plugin 'jsbeautify'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'paredit.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'epeli/slimux'
Plugin 'msanders/snipmate.vim'
Plugin 'SuperTab'
Plugin 'Tagbar'
Plugin 'chase/vim-ansible-yaml'
Plugin 'Vimchant'
Plugin 'tpope/vim-classpath'
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
Plugin 'FuzzyFinder'
Plugin 'airblade/vim-gitgutter'
Plugin 'pangloss/vim-javascript'
Plugin 'L9'
Plugin 'Markdown-syntax'
Plugin 'delimitMate.vim'
Plugin 'surround.vim'


call vundle#end()  
filetype plugin indent on
syntax on
set backup
set backupdir=/tmp
set dir=/tmp
set sm
set ai
let mapleader=","
set tabstop=4
set shiftwidth=4
set expandtab
set number
set t_Co=256
let g:solarized_termcolors=256
set background=light
colo cthulhian
let g:SuperTabDefaultCompletionType = "context"

"clojure
let g:clojure_fuzzy_indent = 1
let g:clojure_maxlines = 200


"keymaps



map <F7> :tabp<CR>
map <F8> :tabn<CR>
map <F12> :tabe %:h<CR>
nmap <F2> :TagbarToggle<CR>
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_javascript_checkers = ['jsxhint', 'jshint']
let g:closetag_html_style=1 
au BufEnter,BufNew *.txt set spell spelllang=en_gb,fi_fi
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
: " <C-h>, <BS>: close popup and delete backword char.
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

map <Leader>s :SlimuxREPLSendLine<CR>
vmap <Leader>s :SlimuxREPLSendSelection<CR>
map <Leader>a :SlimuxShellLast<CR>
map <Leader>k :SlimuxSendKeysLast<CR>

"autocmd vimenter * NERDTree
nmap <F5> :FufFile <CR>
map <F2> :NERDTreeToggle<CR>
map <F9> :SlimuxShellLast<CR>

"super tab
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabDefaultCompletionType = "context"

function! ToggleErrors()
    let old_last_winnr = winnr('$')
    lclose
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic error
        " location panel
        Errors
    endif
endfunction

nmap <silent> <leader>l :call ToggleErrors()<CR>
