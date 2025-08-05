{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    helix
    wl-clipboard
  ];
  xdg.configFile."helix".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/helix";
}

