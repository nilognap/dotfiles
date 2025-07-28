{ config, pkgs, ... }:
{
  home.packages = [ pkgs.vim ];
  xdg.configFile."vim".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/vim";
}
