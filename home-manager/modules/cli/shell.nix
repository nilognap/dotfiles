{ pkgs, ... }:
{
  home = {
    sessionPath = [
      "$HOME/dotfiles/bin"
      # "/nix/var/nix/profiles/default/bin"
      "$HOME/.nix-profile/bin"
    ];
    sessionVariables = {
      LESSHISTFILE = "$HOME/.config/less/history";
      PYTHONHISTFILE = "$HOME/.config/python/.python_history";
    };
    packages = with pkgs; [
      hello
      ffmpeg
    ];
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
      };
      interactiveShellInit = ''
        set -g fish_key_bindings fish_vi_key_bindings
        set fish_greeting
        function ls_after_cd --on-variable PWD
          if status --is-interactive
            command ls --color=auto
          end
        end
        '';
    };
    zsh = {
      # enable = true;
      dotDir = ".config/zsh";
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
      initContent = builtins.readFile ./zsh/.zshrc;
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
