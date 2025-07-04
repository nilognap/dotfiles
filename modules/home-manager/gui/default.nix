{
  imports = [
    ./packages.nix

    ./ghostty.nix
    ./zen-browser.nix

    ./vesktop.nix

    ./element-desktop.nix
    ./obs-studio.nix
  ];

  xdg.mimeApps.defaultApplications = {
    "image/png" = "zen"; # TODO fix this. also add pdf
    "image/jpeg" = "zen";
  };
}
