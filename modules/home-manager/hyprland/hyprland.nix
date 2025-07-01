{
  programs.kitty.enable = true;
  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    portalPackage = null;

    settings = {
      "$mod" = "SUPER";
      "$terminal" = "ghostty";
      bind = [
      ];
    };
  };
}
