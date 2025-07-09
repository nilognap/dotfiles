{
  programs.hyprland.enable = true;
  imports = [ ../../home-manager/modules/hypr ];
  # imports = [ ../../home-manager/modules/hyprland ];

  # environment.sessionVariables = {
    # WLR_NO_HARDWARE_CURSORS = "1";
    # NIXOS_OZONE_WL = "1";
  # };
}
