{ config, lib, pkgs, ... }:
let
  homeDirectory = config.home.homeDirectory;
in
{
  imports = lib.filesystem.listFilesRecursive ./cli;

  home.packages = with pkgs; [
    hello
    vim
    # ffmpeg
    # helix
  ];
}
