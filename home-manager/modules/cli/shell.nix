{ ... }:
{
  home = {
    sessionPath = [
      "$HOME/dotfiles/bin"
      # "/nix/var/nix/profiles/default/bin" # nix stuff
      # "$HOME/.nix-profile/bin" # home manager stuff
    ];
    sessionVariables = {
      LESSHISTFILE = "$HOME/.config/less/history";
      PYTHONHISTFILE = "$HOME/.config/python/.python_history";
    };
    shellAliases = {
      # good
      ls = "ls -F --color=auto";
      # shortned
      l = "ls"; c = "cd";
      v = "vim"; g = "git"; h = "hx";
      rm = "rm -i"; mv = "mv -i"; cp = "cp -i";
      # misc
      du = "du -sh";
      grep = "grep -rnw . -e";
    };
  };
  programs = {
    fish = {
      enable = true;
      functions = {
        fish_prompt = builtins.readFile ./fish/fish_prompt.sh;
        fish_mode_prompt = "";
        fish_user_key_bindings = builtins.readFile ./fish/fish_user_key_bindings.sh;
        # ls_after_cd = {
          # onVariable = "PWD";
          # body = "command ls -F --color=auto";
        # };
      };
      interactiveShellInit = builtins.readFile ./fish/interactiveShellInit.sh;
    };
    zsh = {
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

        function chpwd() { ls -F --color=auto }
        '';
    };
    git = {
      enable = true;
      userName = "nilognap";
      userEmail = "wanghan4c3@gmail.com";
    };
    zoxide = {
      enable = true;
      options = [ "--cmd" "cd" ];
    };
    fzf = {
      enable = true;
      defaultOptions = [
        "--style full"
        "--preview 'fzf-preview.sh {}'"
      ];
    };
    pay-respects = {
      # enable = true;
    };
  };
}
