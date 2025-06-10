{ config, ... }:
{
  home.file = with config.lib.file; {
    "${configTarget}/zsh".source = mkOutOfStoreSymlink "${configSource}/zsh";
    "${configTarget}/vim".source = mkOutOfStoreSymlink "${configSource}/vim";
    "${configTarget}/scripts".source = mkOutOfStoreSymlink "${configSource}/scripts";
    "${configTarget}/nix".source = mkOutOfStoreSymlink "${configSource}/nix";
    "${configTarget}/ghostty".source = mkOutOfStoreSymlink "${configSource}/ghostty";
    "${configTarget}/helix".source = mkOutOfStoreSymlink "${configSource}/helix";
    "${configTarget}/fastfetch".source = mkOutOfStoreSymlink "${configSource}/fastfetch";
  };
}
