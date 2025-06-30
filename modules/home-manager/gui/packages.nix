{ pkgs, ... }:
{
  # just use the web version of wechat and whatsapp
  home.packages = with pkgs; [
    # wechat
    kdePackages.kwave
    hmcl
    bluej
  ];
}
