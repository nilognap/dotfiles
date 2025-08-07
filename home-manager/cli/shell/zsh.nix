{ config, ... }:
{
  programs.zsh = {
    enable = true;
    dotDir = "${config.xdg.configHome}/zsh";
    autocd = true;
    enableCompletion = true;
    completionInit = ''
      autoload -Uz compinit && compinit
      zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'
      '';
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    initContent = ''
      setopt PROMPT_SUBST
      PROMPT="
         %F{blue}%~%f
       %F{magenta}➜%f %F{blue}%#%f "

      function chpwd() { ls -F --color=auto }

      # bindkey -v

      # bindkey -M vicmd h backward-char
      # bindkey -M vicmd a down-line-or-history
      # bindkey -M vicmd e up-line-or-history
      # bindkey -M vicmd i forward-char
      '';
  };
}
