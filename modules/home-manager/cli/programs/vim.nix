{ config, pkgs, ... }:
{
  home = {
    packages = [ pkgs.vim wl-clipboard ];
    file."${config.xdg.configHome}/vim".source =
      config.lib.file.mkOutOfStoreSymlink
        "${config.home.homeDirectory}/dotfiles/config/vim";
  };
}
