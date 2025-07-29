{ config, ... }:
{
  home = {
    sessionPath = [
      "$HOME/dotfiles/bin"
      # "/nix/var/nix/profiles/default/bin" # nix stuff
      # "$HOME/.nix-profile/bin" # home manager stuff
    ];
    sessionVariables = {
      EDITOR = "vim";
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
  xdg.configFile."nixpkgs/config.nix".text = "{ allowUnfree = true; }";
}
