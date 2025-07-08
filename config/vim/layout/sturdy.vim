" ~/.config/vim/layout/sturdy.vim

" v m l c p  x f o u j
" s t r d y  . n a e i
" z k q g w  b h ' ; ,

" right home row
let left  = "n"
let down  = "a"
let up    = "e"
let right = "i"

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

" escape insert
execute "inoremap " .. up .. down .. left .. " <Esc>"
execute "inoremap " .. left .. down .. up .. " <Esc>"

execute "inoremap " .. right .. up .. down .. " <Esc>"
execute "inoremap " .. down .. up .. right .. " <Esc>"

" goto mode
execute "noremap g" .. left .. " ^"
execute "noremap g" .. right .. " $"

" SPECIFIC
execute "noremap h " .. right
execute "noremap H " .. shift_right
execute "noremap j " .. down
execute "noremap J " .. shift_down
execute "noremap k " .. left
execute "noremap K " .. shift_left
execute "noremap l " .. up
execute "noremap L " .. shift_up

