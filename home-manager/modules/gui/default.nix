{ lib, pkgs, ... }:
{
  home.packages = with pkgs; [
    # kdePackages.kwave
  ];
  programs = {
    ghostty = {
      enable = true;
      package = lib.mkIf pkgs.stdenv.isDarwin null;
      settings = {
        # ui
        theme = "tokyonight";
        background-opacity = 0.8;
        mouse-hide-while-typing = true;
        # font
        font-size = 24;
        font-feature = "-calt";
        # window
        window-height = 999;
        window-width = 999;
        # misc
        clipboard-paste-protection = false;
      };
    };
    firefox = {
      # enable = true;
      profiles.nilo = {
        # extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
          # ublock-origin
        # ];
      };
    };
    element-desktop = {
      # enable = true;
      settings = {
      };
    };
  };
  # imports = [
    # ./gui/ghostty.nix
    # ./gui/firefox.nix
    # ./gui/element-desktop.nix
  # ];
}
