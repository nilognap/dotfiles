{ ... }:
{
  programs.fish = {
    enable = true;
    functions = {
      fish_prompt = ''
        echo
        set_color blue
        echo -n "   "(prompt_pwd --dir-length=0)
        set_color normal
        echo
        set_color magenta
        echo -n " ➜"
        set_color normal
        echo -n " "
        set_color blue
        echo -n "% "
        set_color normal
        '';
    };
    interactiveShellInit = ''
      set fish_greeting
      '';
  };
}
