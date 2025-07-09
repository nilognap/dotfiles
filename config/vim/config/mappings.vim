" ~/.config/vim/config/mappings.vim

" settings
set notimeout

" leader
let g:mapleader = "\<Space>"


" basic
" nnoremap <Leader>q <Cmd>x<CR>
nnoremap <Leader>q <Cmd>q<CR>
nnoremap <Leader>w <Cmd>call CloseBuffer()<CR>
nnoremap ZZ <Cmd>call CloseBuffer()<CR>
nnoremap U <C-r>
" nnoremap <silent> <CR> <Cmd>update<Bar>nohlsearch<CR>
nnoremap <CR> <Cmd>update<Bar>nohlsearch<CR>

" QOL, W arijanj
nnoremap ; :
nnoremap : ;
nnoremap x "_x
vnoremap p "_dP
vnoremap < <gv
vnoremap > >gv
nnoremap < <<
nnoremap > >>
noremap <C-right> w
noremap <C-left> b
inoremap <C-BS> <C-w>
nnoremap ciq ci"

" tab
inoremap <Tab> <Cmd>call Tab()<CR>
inoremap <S-Tab> <Cmd>call ShiftTab()<CR>

" buffer
nnoremap <Tab> <Cmd>bnext<CR>
nnoremap <S-Tab> <Cmd>bprev<CR>

inoremap <C-Tab> <Cmd>bnext<CR>
inoremap <C-S-Tab> <Cmd>bprev<CR>

" not really buffer (navigation)
nnoremap <S-Up> <C-u>
nnoremap <S-Down> <C-d>

" maybe alt?
nnoremap <S-Left> <Cmd>bprev<CR>
nnoremap <S-Right> <Cmd>bnext<CR>

" for n in range(1, 9)
  " execute "nnoremap <Leader>" .. n .. " <Cmd>execute 'buffer ' .. ([0] + range(1, bufnr('$'))->filter('buflisted(v:val)'))[" .. n .. "]<CR>"
" endfor

" yank to system clipboard
nnoremap <Leader>y y*
nnoremap <Leader>Y <Cmd>y*<CR>
vnoremap <Leader>y "*y
vnoremap <Leader>Y "*Y
vnoremap <Leader>d "*d
vnoremap <Leader>D "*D

" misc
nnoremap z<Leader> za

" sus
nnoremap gb <C-o>
" nnoremap go <C-o>
" nnoremap gi <C-i>

noremap ^ 0
noremap 0 ^

" functions.vim
nnoremap <Leader>r <Cmd>call Run()<CR>
nnoremap <Leader>t <Cmd>call LoadTemplate()<CR>

nnoremap <Leader>c <Cmd>call Comment("n")<CR>
" the only time <Cmd> is not good
vnoremap <Leader>c :<C-u>call Comment("v")<CR>

