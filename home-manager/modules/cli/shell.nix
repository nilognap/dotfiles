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
    fish = with builtins; {
      enable = true;
      functions = {
        fish_prompt = readFile ./fish/fish_prompt.sh;
        fish_mode_prompt = "";
        fish_user_key_bindings = readFile ./fish/fish_user_key_bindings.sh;
        ls_after_cd = {
          onEvent = "PWD";
          body = "command ls -F --color=auto";
        };
      };
      interactiveShellInit = readFile ./fish/interactiveShellInit.sh;
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
