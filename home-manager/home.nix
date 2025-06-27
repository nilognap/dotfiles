{ pkgs, ... }:
{
  home = {
    username = "nilo";
    homeDirectory = "/Users/nilo";
    # homeDirectory = "/home/nilo";
    stateVersion = "25.05";
  };

  programs.home-manager.enable = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nix.package = pkgs.nix;
  # nixpkgs.config.allowUnfree = true;

  imports = [
    ./modules/cli/default.nix
    ./modules/gui/default.nix
  ];
}
