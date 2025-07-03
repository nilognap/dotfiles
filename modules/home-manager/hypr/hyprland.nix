{
  wayland.windowManager.hyprland = {
    # enable = true; # enable in nixos module

    package = null;
    portalPackage = null;

    settings = {
      "$mod" = "SUPER";
      "$terminal" = "ghostty";
      "$menu" = "walker";
      "$wallpaper" = "/home/nilo/dotfiles/wallpapers/night_sky.mp4";

      general = {
        # layout = "dwindle";
        layout = "master";
      };

      decoration = {
        "$rounding" = 100;
        # "$rounding_power" = 3.0;
      };

      input = {
        "$natural_scroll" = true;

        # kb_layout = "us,us,us";
        # kb_variant = ",colemak_dh,gallium";
        kb_layout = "us,us";
        kb_variant = ",colemak_dh";

        kb_options = "grp:alt_space_toggle";
        # kb_options = "grp:win_space_toggle";
      };
      bind = [
        "$mod, M, exit,"
        "$mod, Q, killActive,"
        "$mod SHIFT, F, fullscreen, 0"
        # "$mod SHIFT, F, fullscreen, 1"

        "$mod, Return, exec, $terminal"
        "$mod, T, exec, $terminal"
        "$mod, F, exec, $fileManager"
        "$mod, B, exec, $browser"

        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 3, workspace, 3"
        "$mod, 3, workspace, 3"
        "$mod, 2, workspace, 2"
        "$mod, 2, workspace, 2"
        "$mod, 2, workspace, 2"
        "$mod, 2, workspace, 2"
        "$mod, 2, workspace, 2"
      ];
      exec-once = [
        "$terminal"
        # "swww-daemon && swww ${../../../wallpapers/night_sky.mp4}"
        "swww-daemon && swww $wallpaper"
      ];
    };

    plugins = [
    ];
  };
}
