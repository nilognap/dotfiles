function fish_prompt
    echo
    set_color blue
    echo -n "       "(prompt_pwd --dir-length=0)
    set_color normal
    echo
    echo " "
    switch $fish_bind_mode
        case default
            set_color green --bold
            echo "[N]"
        case insert
            echo "   "
        case visual
            set_color green --bold
            echo "[V]"
    end
    set_color magenta
    echo -n " ➜"
    set_color normal
    echo -n " "
    set_color blue
    echo -n "% "
    set_color normal
end

