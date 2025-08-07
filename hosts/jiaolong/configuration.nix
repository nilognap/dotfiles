{ config, lib, pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../nixos
  ];

  networking.hostName = "jiaolong";

  boot.kernelPackages = pkgs.linuxPackages_latest;

  boot.kernelParams = [
    "amd_idle.max_cstate=0" # this is useless
    "amdgpu.ppfeaturemask=0xfff73fff"
    "amdgpu.dcdebugmask=0x10"
  ];

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
