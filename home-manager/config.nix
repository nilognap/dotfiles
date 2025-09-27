{ config, ...}:
with config.lib.file; {
  # xdg.configFile."vim".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/vim";
  # xdg.configFile."helix".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/helix";
  xdg.configFile."vim".source = mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/vim";
  xdg.configFile."helix".source = mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/helix";
  # xdg.configFile."fcitx5".source = mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/fcitx5";
}
