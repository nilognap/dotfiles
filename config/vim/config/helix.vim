" ~/.config/vim/config/helix.vim

" HELIX KEYBINDS

" DO WORK

" goto mode
noremap gh 0
noremap gl $
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
noremap % ggVG

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

