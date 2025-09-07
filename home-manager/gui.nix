{ pkgs, inputs, ... }:
{
  # default applications
  xdg.mimeApps.defaultApplications = {
    "text/*" = "hx";
    "image/*" = "zen";
    "application/pdf" = "zen";
    "video/*" = "zen";
    "application/json" = "hx";
  };

  # packages
  home.packages = with pkgs; [
    ungoogled-chromium # for zmk studio

    wechat
    # kdePackages.kwave audacity
    # libsForQt5.kdenlive # bad
    # kdePackages.kdenlive # better
    dopamine vial code-cursor
    tesseract4
    # normcap
    resonance
  ];

  # theme
  gtk = {
    # enable = true;
    theme = {
      package = pkgs.tokyonight-gtk-theme;
      name = "Tokyonight-Dark";
    };
  };

  # flake inputs
  imports = with inputs; [
    zen-browser.homeModules.beta
    spicetify-nix.homeManagerModules.spicetify
  ];

  # programs
  programs = {
    zen-browser.enable = true;
    
    ghostty = {
      enable = true;
      settings = {
        theme = "tokyonight";
        mouse-hide-while-typing = true;
        font-size = 20;
        font-feature = "-calt";
        maximize = true;
        clipboard-paste-protection = false;
        window-decoration = "none";
      };
    };

    vesktop.enable = true;

    spicetify = let
      spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.system};
    in {
      enable = true;
      enabledExtensions = with spicePkgs.extensions; [
       adblockify
       hidePodcasts
       shuffle
     ];
     theme = spicePkgs.themes.hazy;
    };
  };

  services = {
    flameshot.enable = true;
  };
}
