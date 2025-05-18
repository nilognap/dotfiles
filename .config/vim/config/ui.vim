" ~/.config/vim/config/ui.vim

" basic
syntax on
set number relativenumber
set cursorline

set wildmenu
set wildoptions=pum
set showcmd

set signcolumn=yes

" statusline
set laststatus=2
set statusline=
set statusline+=\ \ \ \ \ %#Cursor#\ %F\ %*
set statusline+=\ %#DiffText#%h%*
set statusline+=\ %#DiffDelete#%r%*
set statusline+=\ %#DiffAdd#%m%*
set statusline+=%=
set statusline+=%-15.(%l,%c%V%)\ %P\ 

set showtabline=2
function! TabLine()
	let s = "      "
	for i in range(1, bufnr('$'))
		if buflisted(i) && bufloaded(i) && !empty(expand("%"))
			if i == bufnr("%")
				let s .= "%#Cursor#"
			else
				let s .= "%#TabLineSel#"
			endif
			let s .= " " .. fnamemodify(bufname(i), ':t') .. " %*"
			if getbufinfo(i)[0].changed
				let s .= " %#DiffAdd#[+]%* "
			else
				let s .= "     "
			endif
			let s .= "    "
		endif
	endfor
	return s
endfunction
set tabline=%!TabLine()

