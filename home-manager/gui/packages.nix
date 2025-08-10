{ pkgs, inputs, ... }:
{
  home.packages = with pkgs; [
    # google-chrome # for zmk studio
    wechat

    # kdePackages.kwave
    # audacity
    # libsForQt5.kdenlive # bad
    # kdePackages.kdenlive # better

    vial

    dopamine
    code-cursor
  ];
}
