{
  wayland.windowManager.hyprland.settings = {
    bind = [
      "$mod, M, exit,"
      "$mod, Q, killActive,"
      # "$mod SHIFT, F, fullscreen, 0"
      "$mod SHIFT, F, fullscreen, 1"

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
      "$mod, n, workspace, -1"
      "$mod, o, workspace, +1"

      "$mod SHIFT, 1, movetoworkspace, 1"
      "$mod SHIFT, 2, movetoworkspace, 2"
      "$mod SHIFT, 3, movetoworkspace, 3"
      "$mod SHIFT, 4, movetoworkspace, 4"
      "$mod SHIFT, 5, movetoworkspace, 5"
      "$mod SHIFT, n, movetoworkspace, -1"
      "$mod SHIFT, o, movetoworkspace, +1"
    ];
    bindm = [
      "$mod,mouse:272,movewindow"
      "$mod,mouse:273,resizewindow"
    ];
  };
}
