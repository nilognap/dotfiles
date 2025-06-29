{ config, pkgs, ... }:
{
  home = {
    packages = [ pkgs.vim ];
    file."${config.xdg.configHome}/vim".source =
      config.lib.file.mkOutOfStoreSymlink "../../../../config/vim";
  };
}
