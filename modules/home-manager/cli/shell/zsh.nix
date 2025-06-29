{
  programs.zsh = {
    enable = true;
    dotDir = ".config/zsh";
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

      bindkey -v
      bindkey -M viins 'ea' vi-cmd-mode
      bindkey -M viins 'ae' vi-cmd-mode
      bindkey -M vicmd h vi-back-char
      bindkey -M vicmd a vi-down-line-or-history
      bindkey -M vicmd e vi-up-line-or-history
      bindkey -M vicmd i vi-forward-char

      bindkey -M vicmd k i
      bindkey -M vicmd l a
      # bindkey -M vicmd k vi-insert
      # bindkey -M vicmd l vi-add-text
      bindkey -M vicmd j e

      function chpwd() { ls -F --color=auto }
      '';
  };
}
