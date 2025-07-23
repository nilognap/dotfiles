{
  services.xserver = {
    enable = true;
    xkb = {
      # layout = "us";
      extraLayouts = {
        sturdy = {
          description = "sturdy";
          languages = [ "eng" ];
          symbolsFile = ../../../layouts/sturdy.xkb;
        };
      };
    };
  };
}
