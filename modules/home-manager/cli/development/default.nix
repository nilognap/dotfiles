{ pkgs, ... }:
{
  imports = [
    # ./cpp.nix
    # ./java.nix
    # ./python.nix
    # ./rust.nix
  ];

  home.packages = with pkgs; [
    libgcc
    python314
    rustc cargo
  ];
  programs.java.enable = true;
}
