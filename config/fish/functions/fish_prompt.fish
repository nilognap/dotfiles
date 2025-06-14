function fish_prompt
    set_color blue
    echo -n "   "(prompt_pwd)
    set_color normal

    echo

    set_color magenta
    echo -n " ➜"
    set_color normal
    echo -n " "
    set_color blue
    echo -n "% "
    set_color normal
end

