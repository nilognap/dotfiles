{
  wayland.windowManager.hyprland = {
    enable = true;
    extraConfig = builtins.readFile ./hyprland.conf;
  };
  imports = [
    ../wayland
    ../my_failed_hypr/input.nix
  ];
  programs = {
    hyprlock.enable = true;
  };
  services = {
    hypridle.enable = true;
  };
}
