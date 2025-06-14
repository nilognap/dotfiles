{ config, ... }:
{
  home = {
    sessionPath = [
      "$HOME/dotfiles/bin"
    ];
    sessionVariables = {
      LESSHISTFILE = "$HOME/.config/less/history";
      PYTHONHISTFILE = "$HOME/.config/python/.python_history";
    };
  };
}
