{
  imports = [
  ];

  programs = {
    zsh.enable = true;

    clash-verge = {
      enable = true;
      autoStart = false;
      tunMode = false;
      serviceMode = false;
    };

    zoom-us.enable = true;

    steam.enable = true;
    steam.gamescopeSession.enable = true;
    gamemode.enable = true;
  };
}
