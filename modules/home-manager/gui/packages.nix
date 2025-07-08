{ pkgs, ... }:
{
  # just use the web version of wechat and whatsapp
  home.packages = with pkgs; [
    nautilus

    # wechat
    kdePackages.kwave
    hmcl
    bluej

    spotify strawberry tauon dopamine
  ];
}
