{
  imports = [
    ./hardware-configuration.nix
    ../../nixos
  ];

  networking.hostName = "thinkpad";

  # services.udev.extraRules = ''
  #   ACTION=="add", SUBSYSTEM=="*", TEST=="power/wakeup", ATTR{power/wakeup}="disabled"
  # '';
    # ACTION=="add", SUBSYSTEM=="platform", KERNEL=="PNP0C0C:00", ATTR{power/wakeup}="enabled"

  services.udev.extraHwdb = ''
    # Decrease touchpad scroll speed
    evdev:name:*Touchpad*
     EVDEV_ABS_00=::100
     EVDEV_ABS_01=::100
     EVDEV_ABS_35=::100
     EVDEV_ABS_36=::100
  '';

  # networking.nameservers = [
  #   "8.8.8.8"
  # ];
}
