" ~/.config/vim/config/mappings.vim

" SETTINGS
set notimeout

" LEADER
let g:mapleader = "\<Space>"

" BASIC
nnoremap <Leader>q <Cmd>q<CR>
nnoremap <Leader>w <Cmd>call CloseBuffer()<CR>
nnoremap ZZ <Cmd>call CloseBuffer()<CR>
nnoremap U <C-r>
nnoremap <CR> <Cmd>update<Bar>nohlsearch<CR>

" QOL, W arijanj
nnoremap ; :
nnoremap : ;
vnoremap < <gv
vnoremap > >gv
nnoremap < <<
nnoremap > >>

" EDITING
inoremap <C-BS> <C-w>
nnoremap ciq ci"

" TAB
inoremap <Tab> <Cmd>call Tab()<CR>
inoremap <S-Tab> <Cmd>call ShiftTab()<CR>

" NAVIGATION
noremap <S-left> <Cmd>bnext<CR>
noremap <S-right> <Cmd>bprev<CR>

nnoremap <Tab> <Cmd>bnext<CR>
nnoremap <S-Tab> <Cmd>bprev<CR>

noremap <C-left> b
noremap <C-down> <C-d>
noremap <C-up> <C-u>
noremap <C-right> w

" escape insert
inoremap <down><left> <Esc>

" goto mode
noremap g<left> ^
noremap g<right> $

" CLIPBOARD
nnoremap x "_x

nnoremap <Leader>y y*
nnoremap <Leader>Y <Cmd>y*<CR>
vnoremap <Leader>y "*y
vnoremap <Leader>Y "*Y

vnoremap <Leader>d "*d
vnoremap <Leader>D "*D

vnoremap p "_dP
nnoremap <Leader>p "+p
vnoremap <Leader>p "_d"+p

" MISC
nnoremap z<Leader> za

" SUS
nnoremap gb <C-o>
" nnoremap go <C-o>
" nnoremap gi <C-i>

noremap ^ 0
noremap 0 ^

" FUNCTIONS.VIM
nnoremap <Leader>r <Cmd>call Run()<CR>
nnoremap <Leader>t <Cmd>call LoadTemplate()<CR>

nnoremap <Leader>c <Cmd>call Comment("n")<CR>
" the only time <Cmd> is not good
vnoremap <Leader>c :<C-u>call Comment("v")<CR>

