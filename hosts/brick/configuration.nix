# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  imports = [
    ./hardware-configuration.nix
  ];

  boot.loader.grub = {
    enable = true;
    device = "/dev/sda";
    useOSProber = true;
  };

  networking = {
    hostName = "brick";
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
          gallium = { # TODO do a let in on the layout name
            description = "gallium colstag";
            languages = [ "eng" ];
            symbolsFile = ../../layouts/gallium;
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
		description = "nilo";
		extraGroups = [ "networkmanager" "wheel" ];
		packages = with pkgs; [
		  # prioritize home manager
		];
	};
  };

  nixpkgs.config.allowUnfree = true;

  # be careful what to put in here
  programs = {
    zsh.enable = true;
    # hyprland.enable = true;
  };
  services = {
    keyd = {
      enable = true;
      keyboards = {
        default = {
          ids = [ "*" ];
          settings = {
            main = {
              capslock = "backspace";
              a = "overload(a, meta)";
              s = "overload(s, alt)";
              d = "overload(d, shift)";
              f = "overload(f, ctrl)";
              j = "overload(j, ctrl)";
              k = "overload(k, shift)";
              l = "overload(l, alt)";
              # ";" = "overload(;, meta)";
            };
            extend = {};
            nav = {};
          };
          extraConfig = '''';
        };
        externalMapped = {
          ids = [ "" ];
          settings = {
            main = {};
          };
        };
      };
    };
  };

  # things that go in home manager go in home manager
  environment.systemPackages = with pkgs; [
    # vim
	git
    gh
    # pythonVERSION
  ];

  # do not touch this
  system.stateVersion = "25.05";
}
