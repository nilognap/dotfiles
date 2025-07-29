{ pkgs, ... }:
{
  home = {
    username = "nilo";
    homeDirectory = "/Users/nilo";
    stateVersion = "25.05";
  };

  programs.home-manager.enable = true;
  nix = {
    package = pkgs.nix;
    settings.experimental-features = [ "nix-command" "flakes" ];
  };
  # nixpkgs.config.allowUnfree = true;

  imports = [
    ../../home-manager/cli
  ];
}
