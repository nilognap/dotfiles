" ~/.config/vim/config/snippets.vim

function! Tab()
	if pumvisible()
		call feedkeys("\<C-n>", "n")
	elseif ExpandSnippet()
		return
	elseif getline(".")[col(".")-2] =~# '[a-zA-Z0-9_]'
		call feedkeys("\<C-n>", "n")
	else
		call feedkeys("\<Tab>", "n")
	endif
endfunction

function! ShiftTab()
	if pumvisible()
		call feedkeys("\<C-p>", "n")
	else
		call Tab()
	endif
endfunction

