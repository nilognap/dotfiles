" ~/.config/vim/config/functions.vim

function! Run()
	update
	let run_sh_path = expand("~/.config/scripts/run.sh")
	if executable(run_sh_path)
		execute "!" .. run_sh_path .. " %"
	endif

	" display .out file if there is one
	if filereadable(expand("%<") .. ".out")
		!cat %<.out
	endif
endfunction

function! ObsoleteRun()
	update
	if &filetype == "c"
		!gcc -Wall % -o %< && ./%<
	elseif &filetype == "cpp"
		!g++ -Wall -std=c++11 % -o %< && ./%<
	elseif &filetype == "python"
		!python3 %
	elseif &filetype == "java"
		let package_line = getline(search('\v^package\s\S+;$', "n"))
		if package_line == ""
			!javac -Xlint:all -Werror % && java %<
		else
			let class_path = matchlist(package_line, '\v^package\s\zs\S+\ze;')[0]
			let depth = strlen(class_path) - strlen(substitute(class_path, '\.', "", "g"))
			let src = ".." .. repeat("/..", depth)
			execute "!javac -Xlint:all -Werror -cp " .. src .. " %"
				\ .. " && "
				\ .. "java -cp " .. src .. " " .. class_path .. ".%<"
		endif
	endif
	" display .out file if there is one
	if filereadable(expand("%<") .. ".out")
		!cat %<.out
	endif
endfunction

function! NeedComment(line)
	return a:line !~# '^\s*$' && matchstr(a:line, '^\s*' .. GetCommentChar()) == ""
endfunction
function! Comment(mode)
	let comment_char = GetCommentChar()

	" range
	if a:mode == "n"
		let start_line = line(".")
		let end_line = line(".")
	elseif a:mode == "v"
		let start_line = line("'<")
		let end_line = line("'>")
	else
		echo "wtf"
		return
	endif

	" check if lines are commented already
	" f: false = will add comment, true = will remove comment
	let remove_comment = v:true
	for i in range(start_line, end_line)
		if NeedComment(getline(i))
			let remove_comment = v:false
			break
		endif
	endfor

	" take appropriate measures
	for i in range(start_line, end_line)
		let line = getline(i)
		let indent = matchstr(line, '^\s*')
		if remove_comment
			let line = substitute(line, '^\s*' .. comment_char .. '[ ]', indent, "")
		elseif NeedComment(line)
			let line = indent .. comment_char .. " " .. strpart(line, strlen(indent))
		endif
		call setline(i, line)
	endfor
endfunction

function! LoadTemplate()
	call deletebufline("", 1, line("$"))
	let f = expand("~/.config/vim/templates/template.") .. fnamemodify(bufname(), ":e")
	echom f
	if filereadable(f)
		execute "read " .. f
		call deletebufline("", 1)
		%s/<filename>/\=expand("%<")/ge
		startinsert
		call MoveCursorToPlaceholder()
	else
		echo "no template exists for this filetype"
	endif
endfunction

function! Test(...)
	echo "Test() was run"
	let msg = a:0 == 0 ? "" : join(a:000[1:], " ")
	echo msg
endfunction

