{ config, lib, pkgs, ... }:
let
  homeDirectory = config.home.homeDirectory;
  dotfilesSource = "${homeDirectory}/dotfiles";
  configSource = "${dotfilesSource}/config";
  configTarget = "${homeDirectory}/.config";
in
{
  imports = [
    ./zsh.nix
    ./dotfiles.nix
  ];

  home = {
    username = "nilo"; # replace this with a variable at one point
    homeDirectory = "/Users/nilo";
    # do not touch
    stateVersion = "25.05";

    packages = with pkgs; [
      hello
      # google-chrome
      vim helix
      fzf zoxide pay-respects
      fastfetch
    ];

  };

  programs = {
    home-manager.enable = true;

    git = {
      enable = true;
      userName = "nilognap";
    };

    # firefox = {
      # enable = true;
      # profiles.nilo = {
        # extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
          # ublock-origin
        # ];
      # };
    # };
  };
}
