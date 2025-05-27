" ~/.config/vim/config/colorscheme.vim

set termguicolors
set background=dark

" colorscheme onedark
colorscheme tokyonight
" colorscheme catppuccin_mocha

" sus af
function! Transparent()
	highlight Normal NONE
	highlight EndOfBuffer NONE
	highlight TabLineFill NONE
	highlight StatusLine NONE
	highlight CursorLine NONE
	highlight folded NONE
endfunction
" autocmd ColorScheme * call Transparent()
