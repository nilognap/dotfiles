{ ... }:
{
  home = {
    username = "nilo";
    homeDirectory = "/Users/nilo";
    stateVersion = "25.05";
  };

  programs.home-manager.enable = true;

  # nixpkgs.config.allowUnfree = true;

  imports = [
    ./modules/cli.nix
    # ./modules/gui.nix
  ];
}
