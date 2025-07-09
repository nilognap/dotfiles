{ config, pkgs, ... }:
{
  home = {
    packages = [ pkgs.helix ];
    file."${config.xdg.configHome}/helix".source =
      config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/helix";
  };
}
