{ pkgs, ... }:
{
  # just use the web version of wechat and whatsapp
  home.packages = with pkgs; [
    nautilus
    gparted

    # wechat
    # kdePackages.kwave
    audacity
    # libsForQt5.kdenlive # bad
    kdePackages.kdenlive # better

    hmcl
    bluej

    spotify tauon dopamine
  ];
}
