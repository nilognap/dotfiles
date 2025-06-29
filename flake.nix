{
  description = "nilognap/dotfiles/flake.nix";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, zen-browser, ... }@inputs:
    let
      # system = "x86_64-darwin";
    in
    {
      system = "x86_64-linux";
      nixosConfigurations.dell = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [
          ./hosts/dell/configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              users.nilo = ./hosts/dell/home.nix;
              extraSpecialArgs = { inherit inputs; };
            };
          }
        ];
      };
      homeConfigurations = {
        nilo = home-manager.lib.homeManagerConfiguration {
          # inherit pkgs;
          modules = [ ./hosts/macbook/home.nix ];
        };
      };
    };
}
