echo
switch $fish_bind_mode
    case default
        set_color green --bold
        echo -n "[N]"
    case insert
        echo -n "   "
    case visual
        set_color green --bold
        echo -n "[V]"
end
set_color blue
echo " "(prompt_pwd --dir-length=0)
set_color magenta
echo -n "  ➜ "
set_color blue
echo -n "% "
set_color normal
