{ pkgs, ... }:
{
  # BASIC
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "25.05";
  nixpkgs.config.allowUnfree = true;

  # MY OWN STUFF
  i18n.inputMethod = {
    type = "ibus";
    enable = true;
    ibus.engines = [ pkgs.ibus-engines.libpinyin ];
  };
  # why is this not on by default?
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
  services.udev = { packages = [ pkgs.qmk-udev-rules ]; };
  fonts = {
    packages = with pkgs; [
      noto-fonts-cjk-sans
    ];
    # fontconfig.defaultFonts = {
      # sansSerif = [ "Noto Sans CJK SC" ];
      # monoSpace = [ "Noto Sans CJK SC" ];
    # };
  };

  # DO NOT TOUCH
  networking.networkmanager.enable = true;

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  services.printing.enable = true;

  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    jack.enable = true;
  };

  users.defaultUserShell = pkgs.zsh;
}
