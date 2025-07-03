{ pkgs, ... }:
{
  imports = [
    # ./cpp.nix
    # ./java.nix
    # ./python.nix
    # ./rust.nix
  ];

  home.packags = with pkgs; [
    libgcc
    python314
    rustc cargo
  ];
  programs.java.enable = true;
}
