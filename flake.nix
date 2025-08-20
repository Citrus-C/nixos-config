{
  description = "A simple NixOS flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    daeuniverse.url = "github:daeuniverse/flake.nix"; # dae

    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    stylix,
    ... 
  }@inputs:

  let 
    system = "x86_64-linux";
  in {
    # TODO 请将下面的 my-nixos 替换成你的 hostname
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs system; };
      modules = [
        ./host/asus/default.nix
        
        inputs.daeuniverse.nixosModules.dae
        inputs.daeuniverse.nixosModules.daed

        stylix.nixosModules.stylix
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.extraSpecialArgs = { inherit inputs system; };
          home-manager.users.fall_dust = import ./home;
        }

        # nixpkgs.overlays = [
        #     inputs.nur.overlay
        #     inputs.emacs-overlay.overlay
        #     (import ./overlays)
        # ];
      ];
    };
  };
}
