" ~/.config/vim/config/indent.vim

set tabstop=4
set softtabstop=4
set shiftwidth=4

set autoindent
filetype indent on

" (s = parenthesis
" U1 = single parenthesis on a line
" m1 = closing parenthesis
" cs = block comment
autocmd FileType cpp,java setlocal cinoptions+=(s,U1,m1,cs

let g:pyindent_open_paren = "shiftwidth()"
let g:vim_indent_cont = "shiftwidth()"

