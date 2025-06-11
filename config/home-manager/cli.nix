{ config, pkgs, ... }:
let
  homeDirectory = config.home.homeDirectory;
  configTarget = "${homeDirectory}/.config";
in
{
  home.packages = with pkgs; [
    hello
    # google-chrome
    vim
    fastfetch
    helix
  ];

  programs = {
    zsh = {
      enable = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
      initContent = "source ${configTarget}/zsh/.zshrc";
    };
    zoxide = {
      enable = true;
      options = [
        "--cmd cd"
      ];
    };
    fzf.enable = true;
    # pay-respects.enable = true;
    git = {
      enable = true;
      userName = "nilognap";
      userEmail = "wanghan4c3@gmail.com";
    };
  };
}
