" ~/.config/vim/config/settings.vim

" basic
set nocompatible
set autochdir

" centralize vim files
let $VIMHOME=$HOME."/.config/vim"

set viminfofile=$VIMHOME/viminfo
set backupdir=$VIMHOME/backup//
set directory=$VIMHOME/swap//
set undodir=$VIMHOME/undo//

for dir in [ &backupdir, &directory, &undodir ]
	if !isdirectory(dir)
		call mkdir(dir, "p")
	endif
endfor

set backup swapfile undofile

" misc
set scrolloff=999
set hidden

" fold
set foldmethod=indent
set foldlevel=1
" autocmd Filetype * execute "setlocal foldignore=" .. GetCommentChar()

