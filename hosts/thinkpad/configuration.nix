{ pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../nixos
  ];

  networking.hostName = "thinkpad";

  # boot.kernelPackages = pkgs.linuxPackages_latest;

  # boot.kernelParams = [
  #   "acpi_enforce_resources=lax"

  #   "nvidia.NVreg_PreserveVideoMemoryAllocations=1"
  #   "amdgpu.dcdebugmask=0x10" # for debug
  # ];

  # services.udev.extraRules = ''
  #   ACTION=="add", SUBSYSTEM=="*", TEST=="power/wakeup", ATTR{power/wakeup}="disabled"
  # '';
    # ACTION=="add", SUBSYSTEM=="platform", KERNEL=="PNP0C0C:00", ATTR{power/wakeup}="enabled"

  # services.udev.extraHwdb = ''
  #   # Decrease touchpad scroll speed
  #   evdev:name:UNIW0001:00 093A:0255 Touchpad*
  #    EVDEV_ABS_00=::60
  #    EVDEV_ABS_01=::60
  #    EVDEV_ABS_35=::60
  #    EVDEV_ABS_36=::60
  # '';

  # services.xserver.videoDrivers = [ "nvidia" ];
  # hardware.nvidia = {
  #   open = true;
  #   modesetting.enable = true;
  #   powerManagement.enable = true;

  #   prime = {
  #     sync.enable = true;
  #     # offload = {
  #     #   enable = true;
  #     #   enableOffloadCmd = true;
  #     # };
  #     amdgpuBusId = "PCI:5:0:0"; # integrated
  #     nvidiaBusId = "PCI:1:0:0"; # discrete
  #   };
  # };

  # networking.nameservers = [
  #   "8.8.8.8"
  # ];

  # boot.extraModprobeConfig = ''
  #   blacklist nouveau
  #   options nouveau modeset=0
  # '';
  
  # services.udev.extraRules = ''
  #   # Remove NVIDIA USB xHCI Host Controller devices, if present
  #   ACTION=="add", SUBSYSTEM=="pci", ATTR{vendor}=="0x10de", ATTR{class}=="0x0c0330", ATTR{power/control}="auto", ATTR{remove}="1"
  #   # Remove NVIDIA USB Type-C UCSI devices, if present
  #   ACTION=="add", SUBSYSTEM=="pci", ATTR{vendor}=="0x10de", ATTR{class}=="0x0c8000", ATTR{power/control}="auto", ATTR{remove}="1"
  #   # Remove NVIDIA Audio devices, if present
  #   ACTION=="add", SUBSYSTEM=="pci", ATTR{vendor}=="0x10de", ATTR{class}=="0x040300", ATTR{power/control}="auto", ATTR{remove}="1"
  #   # Remove NVIDIA VGA/3D controller devices
  #   ACTION=="add", SUBSYSTEM=="pci", ATTR{vendor}=="0x10de", ATTR{class}=="0x03[0-9]*", ATTR{power/control}="auto", ATTR{remove}="1"
  # '';
  # boot.blacklistedKernelModules = [ "nouveau" "nvidia" "nvidia_drm" "nvidia_modeset" ];
}
