{
  programs.waybar = {
    enable = true;
    settings = {
      layer = "top";
      height = 30;
      modules-left = [
        "hyprland/window"
      ];
      modules-center = [
        # "hyprland/workspaces"
        "hyprland/workspace"
      ];
      modules-right = [
        "tray"
        "battery"
        "pulseaudio"
        "temperature"
        "hyprland/language"
        "custom/power"

        "clock"
      ];
      # "hyprland/workspaces" = 
      hyprland/workspaces = {
        on-click = "activate";
        show-special = true;
        persistent-workspaces = {
          "*" = [ 1, 2, 3, 4 ]
        };
      };
      battery = {
        states = {
          good = 90;
          warning = 30;
          critical = 20
        };
      };
    };
  };
}
