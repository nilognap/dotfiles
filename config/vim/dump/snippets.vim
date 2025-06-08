" ~/.vim/config/snippets.vim

" snippets
" only simple snippets
" no advanced features like tabstops

" load snippets.json
let snippet_path = expand("~/.vim/config/snippets.json")
if filereadable(snippet_path)
	try
		let snippet_dict = json_decode(join(readfile(snippet_path), "\n"))
	catch
		echoerr "Error parsing snippets.json: " . v:exception
	endtry
else
	let snippet_dict = {}
endif
autocmd FileType * let snippet_dict = snippet_dict->get(expand("<amatch>"), {})

function! ExpandSnippet()
	let trigger = matchstr(strpart(getline("."), 0, col(".") - 1), '\k\+$')

	if !has_key(g:snippet_dict, trigger)
		return v:false
	endif

	let content = deepcopy(g:snippet_dict[trigger])

	" replace trigger
	let line = getline(".")
	let pre = strpart(line, 0, col(".") - 1 - strlen(trigger))
	let suf = strpart(getline("."), col(".") - 1, col("$") - col("."))
	let content[0] = pre .. content[0] .. suf
	" format snippet
	let base_indent = matchstr(line, '^\s*')
	for i in range(len(content))
		let content[i] = substitute(content[i], '\', '\\', "g")
		let content[i] = substitute(content[i], "<filename>", expand("%<"), "g")
		if i > 0
			let content[i] = base_indent .. content[i]
		endif
	endfor

	" insert snippet
	call setline(".", content[0])
	call append(".", content[1:])
	call MoveCursorToPlaceholder()

	return v:true
endfunction
