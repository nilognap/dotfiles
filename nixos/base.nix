{ pkgs, ... }:
{
  # BASIC
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "25.05";
  nixpkgs.config.allowUnfree = true;

  users.users.nilo = {
    isNormalUser = true;
    extraGroups = [ "networkmanager" "wheel" ];
  };

  # MY OWN STUFF
  users.defaultUserShell = pkgs.zsh;
  time.timeZone = "Europe/Malta";

  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
    fcitx5.addons = with pkgs; [
      libsForQt5.fcitx5-chinese-addons
      fcitx5-fluent
    ];
  };

  # why is this not on by default?
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  services.udev = {
    packages = [ pkgs.qmk-udev-rules ];
    extraRules = ''
      ATTRS{manufacturer}=="ZMK", MODE="0666"
      KERNEL=="hidraw*", ATTRS{manufacturer}=="ZMK", MODE="0666"
    '';
  };
  fonts.packages = [ pkgs.lxgw-wenkai ];

  # would be cooked if this was on and there is some error so i get stuck
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
