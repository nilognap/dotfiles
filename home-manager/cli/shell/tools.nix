{
  programs = {
    zoxide = {
      enable = true;
      options = [ "--cmd" "cd" ];
    };
    fzf = {
      enable = true;
      defaultOptions = [
        "--style full"
        "--preview 'fzf-preview.sh {}'"
      ];
    };
  };
}
