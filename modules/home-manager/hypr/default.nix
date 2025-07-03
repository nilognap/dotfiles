{
  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    portalPackage = null;
  };

  imports = [
    ./variables.nix
    ./packages.nix

    ./input.nix
    ./bind.nix
    ./exec-once.nix

    ./hypridle.nix
    ./hyprlock.nix

    ./waybar.nix
  ];
}
