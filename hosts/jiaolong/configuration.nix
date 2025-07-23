{
  imports = [
    ./hardware-configuration.nix
    ../../modules/nixos
  ];

  networking.hostName = "jiaolong";
  time.timeZone = "Europe/Malta";

  users.users.nilo = {
    isNormalUser = true;
    extraGroups = [ "networkmanager" "wheel" ];
  };

  swapDevices = [ {
    device = "/var/lib/swapfile";
    size = 32 * 1024;
  } ];

  # boot.blacklistedKernelModules = [ "nvidia" ];

  services.xserver.videoDrivers = [ "nvidia" ];
  boot.kernelParams = [ "amd_idle.max_cstate=0" ]; # try 1
  hardware.nvidia = {
    open = true;
    modesetting.enable = true;
    prime = {
      sync.enable = true;
      # offload = { # add "nvidia-offload" before game launch command
        # enable = true;
        # enableOffloadCmd = true;
      # };
      amdgpuBusId = "PCI:5:0:0"; # integrated
      nvidiaBusId = "PCI:1:0:0"; # discrete
    };
  };
}
