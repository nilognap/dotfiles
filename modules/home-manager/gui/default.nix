{ inputs, pkgs, ... }:
{
  home.packages = with pkgs; [
    kdePackages.kwave
    hmcl
  ];
  imports = [
    inputs.zen-browser.homeModules.beta
  ];
  programs = {
    ghostty = {
      enable = true;
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
    zen-browser = {
      enable = true;
    };
    element-desktop = {
      enable = true;
      settings = {
      };
    };
  };
}
