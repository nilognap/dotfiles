{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        # layer = "top";
        height = 30;
        modules-left = [
          "hyprland/workspaces"
        ];
        modules-center = [
          "hyprland/window"
        ];
        modules-right = [
          "tray" "battery" "pulseaudio" "temperature" "hyprland/language"
          "network" "custom/power"
          "clock"
        ];
        "hyprland/workspaces" = {
          on-click = "activate";
          show-special = true;
          persistent-workspaces = {
            "*" = [ 1 2 3 4 ];
          };
        };
        "custom/power" = {
          format = "power";
          on-click = "hyprlock";
        };
        battery = {
          states = {
            good = 90;
            warning = 30;
            critical = 20;
          };
        };
      };
    };
    style = builtins.readFile ./style.css;
  };
}
