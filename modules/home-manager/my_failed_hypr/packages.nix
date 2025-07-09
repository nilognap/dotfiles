{ pkgs, ... }:
{
  home.packages = with pkgs; [
    wl-clipboard
    walker
    mpvpaper # TODO remove this once it is fixed by tarrew
  ];
}
