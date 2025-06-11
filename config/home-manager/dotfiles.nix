{ config, ... }:
let
  homeDirectory = config.home.homeDirectory;
  dotfilesSource = "${homeDirectory}/dotfiles";
  configSource = "${dotfilesSource}/config";
  configTarget = "${homeDirectory}/.config";
in
{
  home.file = with config.lib.file; {
    "${configTarget}/zsh".source = mkOutOfStoreSymlink "${configSource}/zsh";
    "${configTarget}/vim".source = mkOutOfStoreSymlink "${configSource}/vim";
    "${configTarget}/bin".source = mkOutOfStoreSymlink "${dotfilesSource}/bin";
    "${configTarget}/nix".source = mkOutOfStoreSymlink "${configSource}/nix";

    "${configTarget}/ghostty".source = mkOutOfStoreSymlink "${configSource}/ghostty";
    "${configTarget}/fastfetch".source = mkOutOfStoreSymlink "${configSource}/fastfetch";
    "${configTarget}/helix".source = mkOutOfStoreSymlink "${configSource}/helix";
  };
}
