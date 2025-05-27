" ~/.config/vim/config/settings.vim

" basic
set nocompatible
set autochdir

" centralize vim files
set viminfofile=~/.config/vim/viminfo
set directory=~/.config/vim/swap//
set undodir=~/.config/vim/undo//
set undofile

" misc
set scrolloff=999
set hidden

" fold
set foldmethod=indent
set foldlevel=1
" autocmd Filetype * execute "setlocal foldignore=" .. GetCommentChar()

