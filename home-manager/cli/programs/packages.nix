{ pkgs, ... }:
{
  home.packages = with pkgs; [
    hello
    tree
    zip unzip
  ];
}
