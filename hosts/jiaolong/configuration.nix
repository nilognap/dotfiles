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

  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia.open = true;
  # hardware.nvidia.open = false;
  hardware.nvidia.modesetting.enable = true;
  hardware.nvidia.prime = {
    sync.enable = true;
    # offload ={ # add "nvidia-offload" before game launch command
      # enable = true;
      # enableOffloadCmd = true;
    # };
    amdgpuBusId = "PCI:5:0:0"; # integrated
    nvidiaBusId = "PCI:1:0:0"; # discrete
  };
}
