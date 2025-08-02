{ pkgs, ... }:
{
  # BASIC
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "25.05";
  nixpkgs.config.allowUnfree = true;

  # MY OWN STUFF
  users.defaultUserShell = pkgs.zsh;
  time.timeZone = "Europe/Malta";

  i18n.inputMethod = {
    enable = true;
    type = "ibus";
    # ibus.engines = [ pkgs.ibus-engines.libpinyin ];
    ibus.engines = [ pkgs.ibus-engines.rime ];
  };

  # why is this not on by default?
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
  services.udev = { packages = [ pkgs.qmk-udev-rules ]; };
  fonts.packages = [ pkgs.noto-fonts-cjk-sans ];

  boot.plymouth.enable = true;

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
    jack.enable = true;
  };
}
