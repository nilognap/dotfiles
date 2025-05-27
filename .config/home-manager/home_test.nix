{ config, pkgs, ... }: {
	home = {
		username = "nilo";
		homeDirectory = "/Users/nilo";
		stateVersion = "25.05";
		packages = [
			pkgs.fastfetch
		]
	}
}
