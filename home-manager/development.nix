{ pkgs, ... }:
{
  imports = [
    # ./cpp.nix
    # ./java.nix
    # ./python.nix
    # ./rust.nix
  ];

  home.packages = with pkgs; [
    # libgcc
    gcc

    python314

    # rustc cargo

    jdt-language-server maven
  ];
  programs.java.enable = true;
}
