{ config, pkgs, ... }:
let
  configSource = "${config.home.homeDirectory}/dotfiles/config";
  configHome = "${config.xdg.configHome}";
in
{
  home = {
    packages = with pkgs; [
      hello
      vim
      helix
      ffmpeg
    ];
    file = with config.lib.file; {
      # "${configHome}/vim".source = "${configSource}/vim";
      # "${configHome}/helix".source = "${configSource}/helix";
      "${configHome}/vim".source = mkOutOfStoreSymlink "${configSource}/vim";
      "${configHome}/helix".source = mkOutOfStoreSymlink "${configSource}/helix";
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
        logo = {
          # source = "nixos";
          padding = { top = 1; left = 2; right = 2; };
        };
        modules = [
          "title" "separator" "os" "host" "kernel" "uptime" "packages" "shell" "display"
          "de" "wm" "wmtheme" "theme" "icons" "font"
          "cpu" "gpu" "memory" "swap" "disk" "battry" "poweradapter"
        ];
      };
    };
  };
}
