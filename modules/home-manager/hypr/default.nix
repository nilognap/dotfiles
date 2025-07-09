{
  wayland.windowManager.hyprland = {
    enable = true;
    extraConfig = builtins.readFile ./hyprland.conf;
  };
  programs = {
    hyprlock.enable = true;
  };
  services = {
    hypridle.enable = true;
  };
}
