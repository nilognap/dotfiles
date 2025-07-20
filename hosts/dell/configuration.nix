{
  imports = [
    ./hardware-configuration.nix
    ../../modules/nixos
  ];

  networking.hostName = "dell";

  time.timeZone = "Europe/Malta";

  users.users.nilo = {
    isNormalUser = true;
    # description = "nilo";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  # boot.kernalParams = [ "i915.enable=0" ];
  # boot.blacklistedKernelModules = [ "i915" ];
  boot.initrd.kernelModules = [ "amdgpu" ];
  boot.kernelModules = [ "amdgpu" ];
  services.xserver.videoDrivers = [ "amdgpu" ];
}
