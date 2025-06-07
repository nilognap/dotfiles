{ config, lib, pkgs, ... }:
let
  homeDirectory = config.home.homeDirectory;
  dotfilesSource = "${homeDirectory}/code/dotfiles";
  configSource = "${dotfilesSource}/.config";
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

  # xdg.configFile = {
    # "zsh/.zshrc" = {
      # source = "${configSource}/zsh/.zshrc";
    # };
    # "vim" = {
      # source = "${configSource}/vim";
      # recursive = true;
    # };
    # "ghostty" = {
      # source = "${configSource}/ghostty";
      # recursive = true;
    # };
  # };

  programs = {
    # git = {
      # enable = true;
    # };
  };
}
