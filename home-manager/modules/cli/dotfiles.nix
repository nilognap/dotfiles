{ config, ... }:
let
  configSource = "${config.home.homeDirectory}/dotfiles/config";
  addConfig = configDirectory:
  {
	  "${config.xdg.configHome}/${configDirectory}".source =
		config.lib.file.mkOutOfStoreSymlink "${configSource}/${configDirectory}";
  };
in
{
  home.file = with config.lib.file; {
    "${config.xdg.configHome}/nix".source = mkOutOfStoreSymlink "${configSource}/nix";
    "${config.xdg.configHome}/zsh".source = mkOutOfStoreSymlink "${configSource}/zsh";
    "${config.xdg.configHome}/vim".source = mkOutOfStoreSymlink "${configSource}/vim";
    # "${config.xdg.configHome}/helix".source = mkOutOfStoreSymlink "${configSource}/helix";
  };
}
