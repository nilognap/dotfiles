" ~/.config/vim/config/autocmds.vim

autocmd CursorMoved,CursorMovedI * call CenterCursor()
autocmd BufWritePre * call DeleteTrailingSpaces()
" autocmd BufWritePre * retab!
autocmd BufWinEnter * call RestoreCursorPosition()

