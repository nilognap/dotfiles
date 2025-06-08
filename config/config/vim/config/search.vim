" ~/.config/vim/config/search.vim

set hlsearch
set incsearch
set ignorecase
set smartcase
augroup AutoHighlighting
	autocmd!
	autocmd CmdlineEnter /,\? set hlsearch
	autocmd CmdlineLeave /,\? set nohlsearch
augroup END

