{ config, ... }:
{
  home.sessionPath = [
    "${config.home.homeDirectory}/.nix-profile/bin"
    "/nix/var/nix/profiles/default/bin"
  ];
  programs.fish = {
    enable = true;
    functions = {
      fish_prompt = builtins.readFile "${config.home.homeDirectory}/dotfiles/config/fish/functions/fish_prompt.fish";
    };
    interactiveShellInit = ''
      set -g fish_key_bindings fish_vi_key_bindings
      set fish_greeting
      function ls_after_cd --on-variable PWD
        if status --is-interactive
          command ls --color=auto
        end
      end
      '';
  };
}
