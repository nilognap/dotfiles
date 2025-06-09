" ~/.config/vim/config/helpers.vim

" function! CenterCursor()
	" if (winline() == 1 && line(".") != 1) || winline() == winheight(0)
		" normal! zz
		" if line(".") == line("$") " weird ass } snapping
			" call cursor(".", col(".") + 1)
		" endif
	" endif
" endfunction

function! DeleteTrailingSpaces() " no snapping
	let c = getcurpos()
	substitute/\s\+$//e
	call setpos(".", c)
endfunction

function! CloseBuffer()
	if len(getbufinfo({"buflisted": 1})) == 1
		exit
	else
		update
		bdelete
	endif
endfunction

let comment_char_dict = {
	\ "vim": "\"",
	\ "c": "//",
	\ "cpp": "//",
	\ "python": "#",
	\ "java": "//",
	\ "javascript": "//",
	\ }
function! GetCommentChar()
	return g:comment_char_dict->get(&filetype, "#")
endfunction

function! GetIndent()
	return &expandtab ? repeat("\<Space>", &shiftwidth) : "\<Tab>"
endfunction

function! MoveCursorToPlaceholder()
	let c = searchpos("|", "c")
	if c != [0, 0]
		call setline(c[0], substitute(getline(c[0]), "|", "", ""))
		call cursor(c)
	endif
endfunction

function! RestoreCursorPosition()
	if 1 <= line("'\"") && line("'\"") <= line("$")
		normal! g'"
	endif
endfunction

