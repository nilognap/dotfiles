{
  home = {
    sessionPath = [
      "$HOME/dotfiles/bin"
      # "/nix/var/nix/profiles/default/bin" # nix stuff
      # "$HOME/.nix-profile/bin" # home manager stuff
    ];
    sessionVariables = {
      LESSHISTFILE = "$HOME/.config/less/history";
      PYTHONHISTFILE = "$HOME/.config/python/.python_history";
    };
    shellAliases = {
      # good
      ls = "ls -F --color=auto";
      # shortned
      l = "ls"; c = "cd";
      v = "vim"; g = "git"; h = "hx";
      rm = "rm -i"; mv = "mv -i"; cp = "cp -i";
      # misc
      du = "du -sh";
      grep = "grep -rnw . -e";
    };
  };
}
