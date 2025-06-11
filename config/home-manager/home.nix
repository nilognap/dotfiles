{ pkgs, ... }:
{
  home = {
    username = "nilo"; # replace this with a variable at one point
    homeDirectory = "/Users/nilo";
    # do not touch
    stateVersion = "25.05";
  };

  programs.home-manager.enable = true;

  # uhhhh
  nixpkgs.config.allowUnfree = true;

  imports = [
    ./cli.nix
    ./dotfiles.nix
    # ./gui.nix
  ];
}
