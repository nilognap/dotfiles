{ config, pkgs, ... }:
{
  # do not touch
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "25.05";
  nixpkgs.config.allowUnfree = true;

  imports = [
    ./hardware-configuration.nix
    ../../modules/nixos
  ];

  boot.loader.grub = {
    enable = true;
    device = "/dev/sda";
    useOSProber = true;
  };

  networking = {
    hostName = "dell";
    networkmanager.enable = true;
  };

  time.timeZone = "Europe/Malta";
  i18n.defaultLocale = "en_US.UTF-8";

  services = {
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
    xserver = {
      enable = true;
      xkb = {
        layout = "us";
        extraLayouts = {
          gallium = {
            description = "gallium colstag";
            languages = [ "eng" ];
            symbolsFile = "${config.users.users.nilo.home}/dotfiles/layouts/${layout_name}";
          };
        };
      };
    };
    printing.enable = true;
  };

  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    # jack.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;
    users.nilo = {
		isNormalUser = true;
		# description = "nilo";
		extraGroups = [ "networkmanager" "wheel" ];
	};
  };


  # prioritize home manager
  environment.systemPackages = with pkgs; [
	git
    # python314 jdk
    # gh
  ];
}
