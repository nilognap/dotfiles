{
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        # source = "nixos";
        padding = { top = 1; left = 2; right = 2; };
      };
      modules = [
        "title" "separator" "os" "host" "kernel" "uptime" "packages" "shell" "display"
        "de" "wm" "wmtheme" "theme" "icons" "font"
        "cpu" "gpu" "memory" "swap" "disk" "battry" "poweradapter"
      ];
    };
  };
}
