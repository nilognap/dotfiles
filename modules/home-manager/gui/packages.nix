{ pkgs, ... }:
{
  home.packages = with pkgs; [
    wechat

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
