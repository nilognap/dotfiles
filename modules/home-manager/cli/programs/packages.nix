{ pkgs, ... }:
{
  home.packages = with pkgs; [
    hello
    ffmpeg
  ];
}
