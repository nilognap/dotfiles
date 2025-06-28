{ inputs, pkgs, ... }:
{
  home = {
    username = "nilo";
    homeDirectory = "/home/nilo";
    stateVersion = "25.05";
  };

  programs.home-manager.enable = true;

  imports = [
    ../../home-manager
    # ../../home-manager/cli
    # ../../home-manager/gui
  ];
}
