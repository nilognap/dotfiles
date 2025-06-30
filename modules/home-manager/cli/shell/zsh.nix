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

      # this causes a lot of lag :(
      # bindkey -M viins 'ea' vi-cmd-mode
      # bindkey -M viins 'ae' vi-cmd-mode

      bindkey -M vicmd h backward-char
      bindkey -M vicmd a down-line-or-history
      bindkey -M vicmd e up-line-or-history
      bindkey -M vicmd i forward-char

      bindkey -M vicmd k vi-insert
      bindkey -M vicmd l vi-add-next
      # bindkey -M vicmd j forward-word

      function chpwd() { ls -F --color=auto }
      '';
  };
}
