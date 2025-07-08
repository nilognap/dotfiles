{ config, ... }:
let
  # wallpaper = "${config.home.homeDirectory}/dotfiles/wallpapers/waves.png";
  wallpaper = ../../../wallpapers/twilight.png;
in
{
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [ "${wallpaper}" ];
      wallpaper = [ ",${wallpaper}" ];
    };
  };
}
