" ~/.config/vim/config/autocomplete.vim

" java shit
filetype plugin on " for java import included files
autocmd FileType java setlocal includeexpr=substitute(v:fname,'\\.','/','g')
" why is this not default???
autocmd FileType java setlocal include=^import

" no fuzzy
set completeopt=menuone,nearest,popup
set completeopt+=noselect
" set completeopt+=noinsert " no difference?

" set completeopt+=fuzzy
" set completefuzzycollect+=keyword

autocmd Filetype * execute "setlocal complete+=k*." .. expand("<amatch>")

