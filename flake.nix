{
  description = "nilognap/dotfiles/flake.nix";

  inputs = {
    # nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }@inputs:
  {
    # system = "x86_64-linux";

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

    nixosConfigurations.jiaolong = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [
        ./hosts/jiaolong/configuration.nix
        home-manager.nixosModules.home-manager
        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            users.nilo = ./hosts/jiaolong/home.nix;
            extraSpecialArgs = { inherit inputs; };
          };
        } 
      ];
    };

    homeConfigurations = {
      nilo = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-darwin;
        modules = [ ./hosts/macbook/home.nix ];
      };
    };
  };
}
