" nilo/.config/vim/config/helix.vim

" goto mode
noremap gs ^
noremap g. g;
noremap ge G

" extra navigation
noremap t<CR> $


" match mode
noremap miw viw
noremap mi( vi(
noremap mi) vi)
noremap mi{ vi{
noremap mi{ vi}
noremap mi[ vi[
noremap mi] vi]
noremap mi< vi>
noremap mi< vi>

noremap mm %
noremap mm %

" misc
nnoremap % ggVG

" macro
let g:is_recording = v:false
function RecordMacro()
	if g:is_recording
		let g:is_recording = !g:is_recording
		return "q"
	else
		let g:is_recording = !g:is_recording
		return "qq"
	endif
endfunction
nnoremap <expr> Q RecordMacro()
nnoremap q @q

