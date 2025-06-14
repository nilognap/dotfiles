{ ... }:
{
  programs.fzf = {
    enable = true;
    defaultOptions = [
      "--style full"
      # "--preview 'fzf-preview.sh {}'"
    ];
  };
}
