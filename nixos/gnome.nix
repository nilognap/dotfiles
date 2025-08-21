{ pkgs, ... }:
{
  # services = {
  services.xserver = {
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };
  environment.systemPackages = [ pkgs.dconf-editor ] ++ (
    with pkgs.gnomeExtensions; [
      blur-my-shell
      just-perfection
      bluetooth-battery-meter
    ]);
}
