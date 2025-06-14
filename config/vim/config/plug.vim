" nilo/.config/vim/plug.vim

function! LoadVimLsp()
	Plug 'prabirshrestha/vim-lsp'
	Plug 'mattn/vim-lsp-settings'
	" let g:lsp_settings = {
		" \ "eclipse-jdt-ls": {
		" \	"initialization_options": {
		" \		"settings": {
		" \			"java.completion.filteredTypes": [
		" \				"java.lang.*"
		" \			]
		" \		}
		" \	}
		" \ }
	" \ }
	setlocal omnifunc=lsp#complete
	setlocal signcolumn=yes
	nnoremap <buffer> gd <plug>(lsp-definition)
	<nnoremap <buffer> gs <plug>(lsp-document-symbol-search)
endfunction

function! LoadEasyMotion()
	Plug 'easymotion/vim-easymotion'

	let g:EasyMotion_do_mapping = 0
	let g:EasyMotion_keys = "asdghklqwertyuiopzxcvbnmfj"

	nnoremap <Leader>s <Plug>(easymotion-bd-w)
	vnoremap <Leader>s <Plug>(easymotion-bd-w)

	autocmd ColorScheme * highlight link EasyMotionTarget Title
endfunction

function! LoadFzf()
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'

	nnoremap <Leader>f <Cmd>Files<CR>
	nnoremap <Leader><Tab> <Cmd>Buffers<CR>
	nnoremap <Leader>l <Cmd>BLines<CR>
	nnoremap <Leader>L <Cmd>Lines<CR>
	nnoremap <Leader>? <Cmd>Helptags<CR>
endfunction

function! LoadPlugins()
	call plug#begin()
	let g:mapleader = "\<Space>"

	" call LoadVimLsp()
	Plug 'sheerun/vim-polyglot'
	call LoadEasyMotion()
	call LoadFzf()

	call plug#end()
endfunction

call LoadPlugins()
