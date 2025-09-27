{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    hello
    tree
    zip unzip

    vim helix wl-clipboard

    gnumake
    qmk
  ];

  programs = { 
    git = {
      enable = true;
      userName = "nilognap";
      userEmail = "wanghan4c3@gmail.com";
      extraConfig = {
        pull.ff = "only";
      };
    };
    gh = {
      enable = true;
      hosts = {};
    };
  };
  
  programs = {
    yt-dlp = {
      enable = true;
      settings = {
        extract-audio = true;
        no-overwrites = true;
        audio-format = "mp3";
        audio-quality = "320K";
        no-mtime = "true";
        no-playlist = "true";
      };
    };
    fastfetch = {
      enable = true;
      settings = {
        logo = { padding = { left = 2; }; };
        modules = [
          "title" "separator" "os" "host" "kernel"
          "uptime" "packages" "shell" "display"
          "de"
          # "wm" "wmtheme" "theme" "icons"
          "cpu" "gpu" "memory" "disk" "battry" "poweradapter"
        ];
      };
    };

    ripgrep = {
      enable = true;
      arguments = []; # TODO
    };
  };
}
