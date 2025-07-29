{
  imports = [
    ./hardware-configuration.nix
    ../../nixos
  ];

  networking.hostName = "dell";
  time.timeZone = "Europe/Malta";

  users.users.nilo = {
    isNormalUser = true;
    extraGroups = [ "networkmanager" "wheel" ];
  };

  # boot.blacklistedKernelModules = [ "i915" ];

  boot.kernelParams = [ "radeon.si_support=0" "amdgpu.si_support=1" ];
  # boot.initrd.kernelModules = [ "amdgpu" ];
  boot.kernelModules = [ "amdgpu" ];
  services.xserver.videoDrivers = [ "amdgpu" ];
  hardware.nvidia.prime = {
    offload = {
      enable = true;
      enableOffloadCmd = true;
    };

    intelBusId = "PCI:0:2:0";
    amdgpuBusId = "PCI:1:0:0";
  };
}
