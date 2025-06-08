{ config, lib, pkgs, ... }:
let
  homeDirectory = config.home.homeDirectory;
  dotfilesSource = "${homeDirectory}/dotfiles";
  configSource = "${dotfilesSource}/config";
  configTarget = "${homeDirectory}/.config";
in
{
  programs.home-manager.enable = true;

  home = {
    username = "nilo";
    homeDirectory = "/Users/nilo";

    # do not change stateVersion
    stateVersion = "25.05";
    # stateVersion = "23.11";

    packages = with pkgs; [
      hello
      # google-chrome
      vim
      fastfetch
    ];

    file = with config.lib.file; {
      "${configTarget}/zsh".source = mkOutOfStoreSymlink "${configSource}/zsh";
      "${configTarget}/vim".source = mkOutOfStoreSymlink "${configSource}/vim";
      "${configTarget}/ghostty".source = mkOutOfStoreSymlink "${configSource}/ghostty";
    };
  };

  programs = {
    # git = {
      # enable = true;
    # };
  };
}
