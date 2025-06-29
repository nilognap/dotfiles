" ~/.config/vim/layout/gallium_colstag.vim

" b l d c v  j y o u ,
" n r t s g  p h a e i
" x q m w z  k f ' ; .

let left  = 'h'
let down  = 'a'
let up    = 'e'
let right = 'i'

let shift_left  = 'H'
let shift_down  = 'A'
let shift_up    = 'E'
let shift_right = 'I'

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
execute "nnoremap " .. shift_left  .. " <C-u>"
execute "vnoremap " .. shift_down  .. " J"
execute "vnoremap " .. shift_up    .. " K"
execute "vnoremap " .. shift_right .. " <C-d>"

execute "noremap h " .. left
execute "noremap H " .. shift_left
execute "noremap j " .. up
execute "noremap J " .. shift_up
execute "noremap k " .. right
execute "noremap K " .. shift_right
execute "noremap l " .. down
execute "noremap L " .. shift_down

" escape insert
execute "inoremap " .. up .. down .. " <Esc>"
execute "inoremap " .. down .. up .. " <Esc>"

" goto mode
execute "noremap g" .. left .. " ^"
execute "noremap g" .. right .. " $"


