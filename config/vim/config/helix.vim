" ~/.config/vim/config/helix.vim

" HELIX KEYBINDS

" DO WORK

" goto mode
nnoremap gh 0
nnoremap gl $
nnoremap gs ^
nnoremap g. g;
nnoremap ge G

vnoremap gh 0
vnoremap gl $
vnoremap gs ^
vnoremap g. g;
vnoremap ge G

" extra navigation
nnoremap t<CR> $
vnoremap t<CR> $


" match mode
nnoremap miw viw
nnoremap mi( vi(
nnoremap mi) vi)
nnoremap mi{ vi{
nnoremap mi{ vi}
nnoremap mi[ vi[
nnoremap mi] vi]
nnoremap mi< vi>
nnoremap mi< vi>

vnoremap miw viw
vnoremap mi( vi(
vnoremap mi) vi)
vnoremap mi{ vi{
vnoremap mi{ vi}
vnoremap mi[ vi[
vnoremap mi] vi]
vnoremap mi< vi>
vnoremap mi< vi>

nnoremap mm %
vnoremap mm %

" misc
nnoremap % ggVG
vnoremap % ggVG

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

