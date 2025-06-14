{ ... }:
{
  home.packages = with pkgs; [
    kdePackages.kwave
  ];

  programs = {
    firefox = {
      enable = true;
      profiles.nilo = {
        extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
          ublock-origin
        ];
      };
    };
  };
}
