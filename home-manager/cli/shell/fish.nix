{
  programs.fish = {
    enable = true;
    functions = {
      fish_prompt = ''
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
        '';
      fish_mode_prompt = "";
      fish_user_key_bindings = ''
        bind h backward-char
        bind a down-line
        bind e up-line
        bind i forward-char

        bind -M insert -m default ae backward-char
        bind -M insert -m default ea backward-char

        # TODO todo
        bind k insert
        bind l append
        '';
    };
    interactiveShellInit = ''
      set -g fish_key_bindings fish_vi_key_bindings
      set fish_greeting
      function ls_after_cd --on-variable PWD
        command ls -F --color=auto
      end
      '';
  };
}
