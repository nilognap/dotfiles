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

}
