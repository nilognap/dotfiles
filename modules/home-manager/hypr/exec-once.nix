{
  services = {
    swww.enable = true;
  };
  programs = {
    mpvpaper = {
      # enable = true; # TODO
    };
  };

  wayland.windowManager.hyprland.settings.exec-once = [
    "$terminal"

    "waybar"

    "swww-daemon & sleep 0.01 && swww img $wallpaper"
    # ''mpvpaper -o "--loop-file=inf" ALL $dynamicWallpaper''
  ];
}
