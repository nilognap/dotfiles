{ config, ... }:
{

  home = {
    sessionPath = [ "$HOME/dotfiles/bin" ];
    sessionVariables = {
      EDITOR = "hx";
      LESSHISTFILE = "$HOME/.config/less/history";
      PYTHONHISTFILE = "$HOME/.config/python/.python_history";
    };
    shellAliases = {
      # good
      ls = "ls -F --color=auto";
      # shortened
      l = "ls"; c = "cd"; o = "xdg-open"; open = "xdg-open";
      v = "vim"; g = "git"; h = "hx";
      # confirmation
      rm = "rm -i"; mv = "mv -i"; cp = "cp -i";
      # misc
      du = "du -sh";
      grep = "grep -rnw . -e"; # TODO ripgrep?
    };
  };

  # unfree in nix-shell
  xdg.configFile."nixpkgs/config.nix".text = "{ allowUnfree = true; }";

  xdg.configFile."bin".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/bin";

  programs.zsh = {
    enable = true;
    # dotDir = "${config.xdg.configHome}/zsh"; # unstable
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

      function chpwd() { ls -F --color=auto }
      setopt HIST_IGNORE_SPACE
      '';
  };

  programs = {
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
  };

  programs.fish = {
    enable = true;
    functions = {
      fish_prompt = ''
        set_color blue
        echo "    "(prompt_pwd --dir-length=0)
        set_color magenta
        echo -n "  ➜ "
        set_color blue
        echo -n "% "
        set_color normal
        '';
      fish_mode_prompt = "";
      fish_user_key_bindings = ''
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
