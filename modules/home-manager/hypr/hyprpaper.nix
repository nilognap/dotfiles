{
  # this shit doesnt work because
  # the path has to be in store
  services.hyprpaper = {
    # enable = true;
    settings = {
      preload = [ "$wallpaper" ];
      wallpaper = [ ",$wallpaper" ];
    };
  };
}
