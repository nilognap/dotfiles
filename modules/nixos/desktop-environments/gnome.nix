{ pkgs, ... }:
{
  services = {
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };
  environment.systemPackages = with pkgs.gnomeExtensions; [
    blur-my-shell
    paperwm
    just-perfection

    # tiling-shell forge
  ];
}
