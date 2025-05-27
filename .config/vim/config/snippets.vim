" ~/.config/vim/config/snippets.vim

" snippets
" only simple snippets
" no advanced features like tabstops

" load snippets.json
let snippet_path = expand("~/.config/vim/config/snippets.json")
if filereadable(snippet_path)
	try
		let snippet_dict = json_decode(join(readfile(snippet_path), "\n"))
	catch
		echoerr "Error parsing snippets.json: " . v:exception
	endtry
else
	let snippet_dict = {}
endif

function! ExpandSnippet()
	let trigger = matchstr(strpart(getline("."), 0, col(".") - 1), '\v\k+$')

	let current_dict = g:snippet_dict->get(&filetype)
	if empty(current_dict) || !has_key(current_dict, trigger)
		return v:false
	endif

	let content = deepcopy(current_dict[trigger])

	" replace trigger
	let line = getline(".")
	let pre = strpart(line, 0, col(".") - 1 - strlen(trigger))
	let suf = strpart(getline("."), col(".") - 1, col("$") - col("."))
	let content[0] = pre .. content[0] .. suf
	" format snippet
	let indent = matchstr(line, '^\s*')
	for i in range(len(content))
		let content[i] = substitute(content[i], '\', '\\', "g")
		let content[i] = substitute(content[i], "<filename>", expand("%<"), "g")
		if i > 0
			let content[i] = indent .. content[i]
		endif
	endfor

	" insert snippet
	call setline(".", content[0])
	call append(".", content[1:])
	call MoveCursorToPlaceholder()

	return v:true
endfunction
