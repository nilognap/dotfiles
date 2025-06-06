{ config, lib, pkgs, ... }:
let
  homeDirectory = config.home.homeDirectory;
  dotfilesSource = "${homeDirectory}/code/dotfiles";
  configSource = "${dotfilesSource}/.config";
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

    # dotfiles
    file = with config.lib.file; {
        "${homeDirectory}/.config/zsh/.zshrc".source = mkOutOfStoreSymlink "${configSource}/zsh/.zshrc";
        "${homeDirectory}/.config/vim".source = mkOutOfStoreSymlink "${configSource}/vim";
    };
  };

  programs = {

    # git = {
      # enable = true;
    # };
    vim = {
      enable = true;
      defaultEditor = true;
    };
  };

  # if this interferes with my vim config then remove it
  # i probably dont need this anyways, even if it does not interfere
}
