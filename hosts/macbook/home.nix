{ pkgs, ... }:
{
  home = {
    username = "nilo";
    homeDirectory = "/Users/nilo";
    stateVersion = "25.05";
  };

  programs.home-manager.enable = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nix.package = pkgs.nix;
  # nixpkgs.config.allowUnfree = true;

  imports = [
    ../../home-manager/cli
    # ../../home-manager/gui
  ];
}
