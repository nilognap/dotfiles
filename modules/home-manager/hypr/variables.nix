{
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";
    "$left" = "n";
    "$down" = "e";
    "$up" = "i";
    "$right" = "o";

    "$terminal" = "ghostty";
    "$menu" = "walker";
    "$fileManager" = "nautilus";

    "$wallpaperDir" = "/home/nilo/dotfiles/wallpapers";
    # "$wallpaperFile" = "west_of_the_sun.png";
    # "$wallpaperFile" = "night_sky.png";
    # "$wallpaperFile" = "waves.png";
    "$wallpaperFile" = "twilight.png";
    "$wallpaper" = "$wallpaperDir/$wallpaperFile";
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

    input = {
      # natural_scroll = true;
      touchpad.natural_scroll = true;

      # the first layout is used for binds
      kb_layout = "us,us";
      kb_variant = "colemak_dh,";

      kb_options = "grp:alt_space_toggle";
      # kb_options = "grp:win_space_toggle";
    };

    gestures = {
      workspace_swipe = true;
      workspace_swipe_fingers = 3;
      workspace_swipe_min_fingers = true;
      workspace_swipe_distance = 1000;
      workspace_swipe_min_speed_to_force = 5;
      workspace_swipe_cancel_ratio = 0.3;
      workspace_swipe_direction_lock = false;
    };

    misc = {
      animate_mouse_windowdragging = true;
      enable_swallow = true;
    };

    bind = [
      "$mod, M, exit,"
      "$mod, Q, killActive,"
      "$mod, F, fullscreen, 1"
      "$mod SHIFT, F, fullscreen, 0"

      "$mod, Space, exec, $menu"
      "$mod, Return, exec, $terminal"
      # "$mod, T, exec, $terminal"
      "$mod, F, exec, $fileManager"
      # "$mod, B, exec, $browser"

      "$mod, 1, workspace, 1"
      "$mod, 2, workspace, 2"
      "$mod, 3, workspace, 3"
      "$mod, 4, workspace, 4"
      "$mod, 5, workspace, 5"
      "$mod, $left, workspace, -1"
      "$mod, $right, workspace, +1"

      "$mod SHIFT, 1, movetoworkspace, 1"
      "$mod SHIFT, 2, movetoworkspace, 2"
      "$mod SHIFT, 3, movetoworkspace, 3"
      "$mod SHIFT, 4, movetoworkspace, 4"
      "$mod SHIFT, 5, movetoworkspace, 5"
      "$mod SHIFT, $left, movetoworkspace, -1"
      "$mod SHIFT, $right, movetoworkspace, +1"

      # "$mod s" screenshot TODO
    ];

    bindm = [
      "$mod,mouse:272,movewindow"
      "$mod,mouse:273,resizewindow"
    ];

    windowrule = [
      # "float, class:.*" # very bad
      "workspace 1, class:$browser"
      "workspace 2, class:$terminal"
    ];
  };
}
