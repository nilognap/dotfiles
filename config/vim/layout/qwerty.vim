" ~/.config/vim/layout/qwerty.vim

" use arrow keys, with navigation layer

" navigation
nnoremap <C-left> <C-u>
nnoremap <C-down> J
nnoremap <C-up> K
nnoremap <C-right> <C-d>
vnoremap <C-left> <C-u>
vnoremap <C-down> J
vnoremap <C-up> K
vnoremap <C-right> <C-d>

" escape insert
inoremap <up><down><left> <Esc>
inoremap <left><down><up> <Esc>

" goto mode
noremap g<left> .. " ^"
noremap g<right> .. " $"

