{ pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../nixos
  ];

  networking.hostName = "jiaolong";

  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.kernelParams = [ "amd_idle.max_cstate=0" ]; # try 1

  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia = {
    # open = true;
    open = false;
    modesetting.enable = true;
    powerManagement.enable = true;

    prime = {
      sync.enable = true;
      amdgpuBusId = "PCI:5:0:0"; # integrated
      nvidiaBusId = "PCI:1:0:0"; # discrete
    };

    # use driver of an older version, to fix the freeze
    # package = config.boot.kernelPackages.nvidiaPackages.mkDriver {
    #   version = "565.77";
    #   sha256_64bit = "sha256-CnqnQsRrzzTXZpgkAtF7PbH9s7wbiTRNcM0SPByzFHw=";
    #   sha256_aarch64 = "sha256-CnqnQsRrzzTXZpgkAtF7PbH9s7wbiTRNcM0SPByzFHw=";
    #   openSha256 = "sha256-VUetj3LlOSz/LB+DDfMCN34uA4bNTTpjDrb6C6Iwukk=";
    #   settingsSha256 = "sha256-VUetj3LlOSz/LB+DDfMCN34uA4bNTTpjDrb6C6Iwukk=";
    #   persistencedSha256 = lib.fakeSha256;
    # };
  };
}
