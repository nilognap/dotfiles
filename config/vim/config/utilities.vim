" ~/.config/vim/config/utilities.vim

function! JavaClassAutocomplete()
	if &filetype != "java"
		return
	endif

	let class_start_line = search("{", "bcnW") + 1
	let class_end_line = search("}", "cnW")
	if class_end_line != 0
		let class_end_line -= 1
	else
		let class_end_line = line("$") - 1
	endif

	let field_pattern = '\v^\s*private\s(static\s)?(final\s)?(transient\s)?(\S+\s)*(\S+);.*$'
	let fields = []
	for line in getline(class_start_line, class_end_line)
		let matches = matchlist(line, field_pattern)
		if empty(matches)
			continue
		endif

		let field = {
			\ "is_static" : !empty(matches[1]),
			\ "is_final" : !empty(matches[2]),
			\ "is_transient" : !empty(matches[3]),
			\ "type" : trim(matches[4]),
			\ "name" : matches[5]
			\ }
		if !field.is_final
			call add(fields, field)
		endif
	endfor
	if empty(fields)
		return
	endif

	let params = []
	let assignments = []
	for field in fields
		call add(params, field.type .. " " .. field.name)
		call add(assignments, GetIndent() .. "this." .. field.name .. " = " .. field.name .. ";")
	endfor
	let class_pattern = '\vclass\s\zs\k+\ze'
	let class_name = matchstr(getline(search(class_pattern, "bcnW")), class_pattern)
	let constructor = [
		\ "// constructor",
		\ "public " .. class_name .. "(" .. join(params, ", ") .. ")",
		\ "{",
		\ ]
	let constructor += assignments
	let constructor = constructor->add("}")

	" getters
	let getters = ["// getters"]
	let setters = ["// setters"]
	for field in fields
		let getters += [
			\ "public " .. (field.is_static ? "static " : "") .. field.type .. " " ..
			\ "get" .. toupper(field.name[0]) .. field.name[1:] .. "()",
			\ "{",
			\ GetIndent() .. "return " .. field.name .. ";",
			\ "}",
			\ ]
		if !field.is_final
			let setters += [
				\ "public " .. (field.is_static ? "static " : "") .. field.type .. " " ..
				\ "set" .. toupper(field.name[0]) .. field.name[1:] .. "()",
				\ "{",
				\ GetIndent() .. "this." .. field.name .. " = " .. field.name .. ";",
				\ "}",
				\ ]
		endif
	endfor

	let new_lines = [""] + constructor + [""] + getters + [""] + setters
	let base_indent = matchstr(getline(class_start_line - 1), '^\s*') .. GetIndent()
	for i in range(len(new_lines))
		let new_lines[i] = base_indent .. new_lines[i]
	endfor
	call append(class_end_line, new_lines)
endfunction

