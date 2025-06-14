{
  description = "nilognap/dotfiles/home-manager/flake.nix";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { home-manager, nixpkgs, ... }:
    let
      lib = nixpkgs.lib;
      system = "x86_64-darwin";
      # system = "x86_64-linux";
      # pkgs = import nixpkgs { inherit system; };
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      homeConfigurations = {
        nilo = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [ ./home.nix ];
        };
      };
    };
}
