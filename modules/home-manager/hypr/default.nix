{
  wayland.windowManager.hyprland = {
    # enable = true; # enable this somewhere else
    package = null;
    portalPackage = null;
  };

  imports = [
    ./variables.nix
    ./packages.nix

    ./exec-once.nix

    ./hyprpaper.nix

    ./hypridle.nix
    ./hyprlock.nix

    ./waybar.nix
  ];
}
