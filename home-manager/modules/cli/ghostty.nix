{ lib, pkgs, ... }:
{
  programs.ghostty = {
    enable = true;
    package = lib.mkIf pkgs.stdenv.isDarwin null;
    settings = {
      # ui
      theme = "catppuccin-mocha";
      background-opacity = 0.8;
      cursor-opacity = 0.8;
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
}
