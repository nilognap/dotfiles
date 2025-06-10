{ ... }:
{
  programs = {
    zsh = {
      enable = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
      initContent = 1500 "source ${configTarget}/zsh/.zshrc";
      shellAliases = {
        cd = "z";
      };
    };
    zoxide.enable = true;
    fzf.enable = true;
    pay-respects.enable = true;
  };
}
