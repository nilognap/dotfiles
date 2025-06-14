{ config, ... }:
{
  programs.zsh = {
    # enable = true;
    dotDir = ".config/zsh";
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    initContent = "source ${config.home.homeDirectory}/dotfiles/config/zsh/.zshrc";
  };
}
