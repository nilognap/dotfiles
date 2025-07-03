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
}
