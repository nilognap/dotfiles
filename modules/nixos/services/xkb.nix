{
  services.xserver = {
    enable = true;
    xkb = {
      layout = "us";
      extraLayouts = {
        gallium = {
          description = "gallium colstag";
          languages = [ "eng" ];
          symbolsFile = ../../layouts/gallium;
        };
      };
    };
  };
}
