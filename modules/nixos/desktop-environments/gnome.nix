{ pkgs, ... }:
{
  services = {
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };
  environment.systemPackages = with pkgs.gnomeExtensions; [
    forge
    blur-my-shell
  ];
}
