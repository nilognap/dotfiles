{ pkgs, ... }:
{
  home.packages = with pkgs; [
    hello
    tree
    ffmpeg
  ];
}
