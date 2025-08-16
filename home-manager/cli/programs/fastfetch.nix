{
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        padding = {
          # top = 1;
          left = 2;
          # right = 1;
        };
      };
      modules = [
        "title" "separator" "os" "host" "kernel"
        "uptime" "packages" "shell" "display"
        "de" "wm" "wmtheme" "theme" "icons"
        "cpu" "gpu" "memory" "disk" "battry" "poweradapter"
      ];
    };
  };
}
