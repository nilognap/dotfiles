" ~/.config/vim/layout/colemak_dh.vim

" q w f p b  j l u y ;
" a r s t g  m n e i o '
" z x c d v  k h , . /

" right home row
let left  = "n"
let down  = "e"
let up    = "i"
let right = "o"

let shift_left  = toupper(left)
let shift_down  = toupper(down)
let shift_up    = toupper(up)
let shift_right = toupper(right)

" basic navigation
execute "nnoremap " .. left  .. " h"
execute "nnoremap " .. down  .. " j"
execute "nnoremap " .. up    .. " k"
execute "nnoremap " .. right .. " l"
execute "nnoremap " .. shift_left  .. " <C-u>"
execute "nnoremap " .. shift_down  .. " J"
execute "nnoremap " .. shift_up    .. " K"
execute "nnoremap " .. shift_right .. " <C-d>"
execute "vnoremap " .. left  .. " h"
execute "vnoremap " .. down  .. " j"
execute "vnoremap " .. up    .. " k"
execute "vnoremap " .. right .. " l"
execute "vnoremap " .. shift_left  .. " <C-u>"
execute "vnoremap " .. shift_down  .. " J"
execute "vnoremap " .. shift_up    .. " K"
execute "vnoremap " .. shift_right .. " <C-d>"

" fix things
execute "noremap h " .. up
execute "noremap H " .. shift_up
execute "noremap j " .. down
execute "noremap J " .. shift_down
execute "noremap k " .. left
execute "noremap K " .. shift_left
execute "noremap l " .. right
execute "noremap L " .. shift_right

" escape insert
execute "inoremap " .. up .. down .. " <Esc>"
execute "inoremap " .. down .. up .. " <Esc>"

" goto mode
execute "noremap g" .. left .. " ^"
execute "noremap g" .. right .. " $"


