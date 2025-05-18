" ~/.config/vim/config/mappings.vim

" settings
set notimeout

" leader
let mapleader = "\<Space>"

" basic
inoremap jk <Esc>
" inoremap jj <Esc>
" inoremap kk <Esc>

nnoremap <leader>q :x<CR>
nnoremap U <C-r>

nnoremap <leader><CR> :update<CR>

inoremap <Tab> <Cmd>call Tab()<CR>
inoremap <S-Tab> <Cmd>call ShiftTab()<CR>

nnoremap <expr> ZZ len(getbufinfo({"buflisted": 1})) == 1 ? "ZZ" : ":update<Bar>bdelete<CR>"
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>

nnoremap <leader>d :call deletebufline("", 1, line("$"))<Bar>startinsert<CR>

nnoremap <leader>y :update<Bar>:%y*<CR>
nnoremap <leader>Y :y*<CR>
vnoremap <leader>y "*y
vnoremap <leader>Y "*Y
vnoremap <leader>d "*d

" misc
nnoremap <silent> <CR> :update<Bar>:nohlsearch<CR>

nnoremap z<leader> za
" nnoremap <leader>z za

nnoremap gb <C-o>
nnoremap go <C-o>
nnoremap gi <C-i>
nnoremap g<leader> 2g;

nnoremap ^ 0
nnoremap 0 ^
vnoremap ^ 0
vnoremap 0 ^


" ~/.vim/config/functions.vim
nnoremap <leader>r :call Run()<CR>
nnoremap <leader>t :call LoadTemplate()<CR>

nnoremap <leader>c :call Comment("n")<CR>
vnoremap <leader>c :<C-u>call Comment("v")<CR>

nnoremap <leader>T :call Test()<CR>

" windows DO NOT use windows :( buffers are good enough

" nnoremap <leader>s <C-w>s
" nnoremap <leader>v <C-w>v
" nnoremap <leader>w <C-w>w
" nnoremap <leader>p <C-w>p
" 
" nnoremap <leader>h <C-w>h
" nnoremap <leader>j <C-w>j
" nnoremap <leader>k <C-w>k
" nnoremap <leader>l <C-w>l
" 
" nnoremap <leader>c <C-w>c
" nnoremap <leader>o <C-w>o
" nnoremap <leader>x <C-w>x

