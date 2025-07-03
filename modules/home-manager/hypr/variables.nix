{
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";
    "$terminal" = "ghostty";
    "$menu" = "walker";
    "$fileManager" = "nautilus";

    "$wallpaper" = "/home/nilo/dotfiles/wallpapers/west_of_the_sun.png";
    # "$wallpaper" = "/home/nilo/dotfiles/wallpapers/night_sky.png";
    "$dynamicWallpaper" = "/home/nilo/dotfiles/wallpapers/night_sky.mp4";

    "$browser" = "zen";

    general = {
      border_size = 3;
      gaps_in = 5;
      gaps_out = 5;

      resize_on_border = true;

      layout = "dwindle";
      # layout = "master";
    };

    decoration = {
      rounding = 20;
      # rounding_power = 3.0;
    };

    gestures = {
      workspace_swipe = true;
      workspace_swipe_fingers = 3;
      workspace_swipe_min_fingers = true;
      workspace_swipe_distance = 500;
    };

    misc = {
      animate_mouse_windowdragging = true;
    };
  };
}
