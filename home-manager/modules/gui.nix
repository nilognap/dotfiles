{ ... }:
{
  home.packages = with pkgs; [
    kdePackages.kwave
  ];
  imports = lib.filesystem.listFilesRecursive ./gui;
}
