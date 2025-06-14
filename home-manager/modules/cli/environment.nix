{ config, ... }:
{
  home = {
    sessionPath = [
      "${config.home.homeDirectory}/.nix-profile/bin"
      "$HOME/dotfiles/bin"
    ];
    sessionVariables = {
      LESSHISTFILE = "$HOME/.config/less/history";
      PYTHONHISTFILE = "$HOME/.config/python/.python_history";
    };
  };
}
