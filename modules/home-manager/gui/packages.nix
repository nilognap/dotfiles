{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # just use the web version of wechat and whatsapp
    # wechat
    # kdePackages.kwave
    audacity
    # libsForQt5.kdenlive # bad
    kdePackages.kdenlive # better

    hmcl
    bluej
    vial

    spotify tauon dopamine
  ];
}
