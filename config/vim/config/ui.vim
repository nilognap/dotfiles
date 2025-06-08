" ~/.config/vim/config/ui.vim

" basic
syntax on
set number relativenumber
set cursorline
set cursorlineopt=line

" transparent background
" highlight Normal ctermbg=NONE guibg=NONE

set wildmenu
set wildoptions=pum
set showcmd

set signcolumn=yes
highlight SignColumn NONE " for tokyonight

" statusline
set laststatus=2
function! StatusLine()
	let s = "   "
	let s .= "%#ToolbarButton# " .. {
		\ "n": "NORMAL %* ",
		\ "i": "INSERT %* ",
		\ "v": "VISUAL %* ",
		\ "V": "V LINE %* ",
		\ "c": "COMMAND %*"
		\ }->get(mode(), "WHAT MODE ARE YOU ON??? %* ")
	let s .= "  %#Cursor# %F %*"
	let s .= " %#DiffText#%h%* %#DiffDelete#%r%* %#DiffAdd#%m%*"
	let s .= "%="
	" let s .= "%-15.(%l,%c%V%) %#ToolbarButton# %P %*   "
	let s .= "%-15.(%l,%c%V%) %#ToolbarButton# %P %*   "
	return s
endfunction
set statusline=%!StatusLine()

" tabline
set showtabline=2
function! TabLine()
	let s = "      "
	for i in range(1, bufnr('$'))
		if buflisted(i) && bufloaded(i) && !empty(expand("%"))
			if i == bufnr("%")
				" let s .= "%#TabLineSel#" " tokyonight
				let s .= "%#Cursor#"
			else
				let s .= "%#TabLine#"
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

