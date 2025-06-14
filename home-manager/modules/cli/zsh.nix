{ ... }:
{
  programs.zsh = {
    # enable = true;
    dotDir = ".config/zsh";
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    initContent = ''
      function chpwd() {
        ls
      }
      setopt PROMPT_SUBST
      PROMPT="
         %F{blue}%~%f
       %F{magenta}➜%f %F{blue}%#%f "
      '';
  };
}
