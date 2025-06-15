" ~/.config/vim/config/mappings.vim

" settings
set notimeout

" leader
let g:mapleader = "\<Space>"

" sus
noremap j h
noremap k j
noremap l k
noremap ; l

noremap J <C-u>
noremap K j
noremap L K
noremap : <C-d>

nnoremap <S-Del> J

noremap ' :
noremap " :

" navigation

" basic
" inoremap jk <Esc>
" inoremap kj <Esc>
" k and l because up and down are pressed
" more often than h and l
inoremap kl <Esc>
inoremap lk <Esc>

" nnoremap <Leader>q <Cmd>x<CR>
nnoremap <Leader>q <Cmd>q<CR>
nnoremap <Leader>w <Cmd>call CloseBuffer()<CR>
nnoremap ZZ <Cmd>call CloseBuffer()<CR>
nnoremap U <C-r>
nnoremap <silent> <CR> <Cmd>update<Bar>nohlsearch<CR>


" tab
inoremap <Tab> <Cmd>call Tab()<CR>
inoremap <S-Tab> <Cmd>call ShiftTab()<CR>


" buffer
noremap <Tab> <Cmd>bnext<CR>
noremap <S-Tab> <Cmd>bprev<CR>
noremap <C-Tab> <Cmd>bnext<CR>
noremap <C-S-Tab> <Cmd>bprev<CR>

inoremap <C-Tab> <Cmd>bnext<CR>
inoremap <C-S-Tab> <Cmd>bprev<CR>

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

noremap ^ 0
noremap 0 ^

" functions.vim
nnoremap <Leader>r <Cmd>call Run()<CR>
nnoremap <Leader>t <Cmd>call LoadTemplate()<CR>

nnoremap <Leader>c <Cmd>call Comment("n")<CR>
" the only time <Cmd> is not good
vnoremap <Leader>c :<C-u>call Comment("v")<CR>

