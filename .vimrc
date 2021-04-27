set nu
set showmatch
set autoindent
syntax on
filetype plugin indent on
set nu
set encoding=utf-8
set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4
set textwidth=100
set fileformat=unix
nnoremap <space> za
highlight BadWhitespace ctermbg=red guibg=red
"highlight OverLength ctermbg=lightred guibg=lightgrey
"call matchadd('OverLength', '\%>100v.\+')
"highlight ExtraWhitespace ctermbg=red guibg=red
"call matchadd('ExtraWhitespace', '\s\+$', 11)
set laststatus=2
set colorcolumn=81

set foldmethod=syntax 
"set foldlevelstart=1
set foldlevelstart=99 "start file with all folds opened
set foldcolumn=1 "defines 1 col at window left, to indicate folding 
let javaScript_fold=1         " JavaScript 
let perl_fold=1               " Perl 
let php_folding=1             " PHP
let r_syntax_folding=1        " R 
let ruby_fold=1               " Ruby 
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script 
let xml_syntax_folding=1      " XML

au BufEnter,BufNew *.py set foldmethod=indent 
