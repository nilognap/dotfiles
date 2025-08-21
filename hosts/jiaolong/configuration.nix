{ pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../nixos
  ];

  networking.hostName = "jiaolong";

  # boot.kernelPackages = pkgs.linuxPackages_latest;

  boot.kernelParams = [
    "acpi_enforce_resources=lax"

    # "amd_idle.max_cstate=0" # this is useless

    # "amdgpu.ppfeaturemask=0xfff73fff"
    "amdgpu.dcdebugmask=0x10" # for debug
  ];

  services.udev.extraRules = ''
    ACTION=="add", SUBSYSTEM=="*", TEST=="power/wakeup", ATTR{power/wakeup}="disabled"
  '';
    # ACTION=="add", SUBSYSTEM=="platform", KERNEL=="PNP0C0C:00", ATTR{power/wakeup}="enabled"

  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia = {
    open = true;
    modesetting.enable = true;
    powerManagement.enable = true;

    prime = {
      sync.enable = true;
      # offload = {
      #   enable = true;
      #   enableOffloadCmd = true;
      # };
      amdgpuBusId = "PCI:5:0:0"; # integrated
      nvidiaBusId = "PCI:1:0:0"; # discrete
    };
  };
}
