{
  imports = [
    ./hardware-configuration.nix
    ../../nixos
  ];

  networking.hostName = "jiaolong";

  # boot.kernelPackages = pkgs.linuxPackages_latest;

  services.xserver.videoDrivers = [ "nvidia" ];
  boot.kernelParams = [ "amd_idle.max_cstate=0" ]; # try 1
  hardware.nvidia = {
    open = true;
    modesetting.enable = true;
    powerManagement.enable = true;
    prime = {
      sync.enable = true;
      amdgpuBusId = "PCI:5:0:0"; # integrated
      nvidiaBusId = "PCI:1:0:0"; # discrete
    };
  };
}
