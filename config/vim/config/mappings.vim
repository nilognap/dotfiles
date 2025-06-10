" ~/.config/vim/config/mappings.vim

" settings
set notimeout

" leader
let g:mapleader = "\<Space>"

" basic
inoremap jk <Esc>
" inoremap kj <Esc>

" nnoremap <Leader>q <Cmd>x<CR>
nnoremap <Leader>q <Cmd>q<CR>
nnoremap <Leader>w <Cmd>call CloseBuffer()<CR>
nnoremap ZZ <Cmd>call CloseBuffer()<CR>
nnoremap U <C-r>
nnoremap <silent> <CR> <Cmd>update<Bar>nohlsearch<CR>


" tab
inoremap <Tab> <Cmd>call Tab()<CR>
inoremap <S-Tab> <Cmd>call ShiftTab()<CR>

" navigation
nnoremap H <C-u>
nnoremap L <C-d>
vnoremap H <C-u>
vnoremap L <C-d>

" buffer
nnoremap <Tab> <Cmd>bnext<CR>
nnoremap <S-Tab> <Cmd>bprev<CR>
nnoremap <C-Tab> <Cmd>bnext<CR>
nnoremap <C-S-Tab> <Cmd>bprev<CR>

inoremap <C-Tab> <Cmd>bnext<CR>
inoremap <C-S-Tab> <Cmd>bprev<CR>

vnoremap <Tab> <Cmd>bnext<CR>
vnoremap <S-Tab> <Cmd>bprev<CR>
vnoremap <C-Tab> <Cmd>bnext<CR>
vnoremap <C-S-Tab> <Cmd>bprev<CR>

for n in range(1, 9)
  execute "nnoremap <Leader>" .. n .. " <Cmd>execute 'buffer ' .. ([0] + range(1, bufnr('$'))->filter('buflisted(v:val)'))[" .. n .. "]<CR>"
endfor

" uh
nnoremap <Leader>d <Cmd>call deletebufline("", 1, line("$"))<Bar>startinsert<CR>

" yank
nnoremap <Leader>y <Cmd>update<Bar>%y*<CR>
nnoremap <Leader>Y <Cmd>y*<CR>
vnoremap <Leader>y "*y
vnoremap <Leader>Y "*Y
vnoremap <Leader>d "*d
vnoremap <Leader>D "*D

" misc
nnoremap z<Leader> za

" sus
nnoremap gb <C-o>
nnoremap go <C-o>
nnoremap gi <C-i>

nnoremap ^ 0
nnoremap 0 ^
vnoremap ^ 0
vnoremap 0 ^


" ~/.vim/config/functions.vim
nnoremap <Leader>r <Cmd>call Run()<CR>
nnoremap <Leader>t <Cmd>call LoadTemplate()<CR>

nnoremap <Leader>c <Cmd>call Comment("n")<CR>
" the only time <Cmd> is not good
vnoremap <Leader>c :<C-u>call Comment("v")<CR>

nnoremap <Leader>T <Cmd>call Test()<CR>

" windows DO NOT use windows :( buffers are good enough

" nnoremap <Leader>s <C-w>s
" nnoremap <Leader>v <C-w>v
" nnoremap <Leader>w <C-w>w
" nnoremap <Leader>p <C-w>p
" 
" nnoremap <Leader>h <C-w>h
" nnoremap <Leader>j <C-w>j
" nnoremap <Leader>k <C-w>k
" nnoremap <Leader>l <C-w>l
" 
" nnoremap <Leader>c <C-w>c
" nnoremap <Leader>o <C-w>o
" nnoremap <Leader>x <C-w>x

