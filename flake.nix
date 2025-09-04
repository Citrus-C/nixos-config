{
  description = "A simple NixOS flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    # colmena.url = "github:zhaofengli/colmena";

    daeuniverse.url = "github:daeuniverse/flake.nix"; # dae

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      stylix,
      ...
    }@inputs:

    {
      # TODO 请将下面的 my-nixos 替换成你的 hostname
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };
        modules = [
          ./host/asus/default.nix

          inputs.daeuniverse.nixosModules.dae
          inputs.daeuniverse.nixosModules.daed

          stylix.nixosModules.stylix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs = { inherit inputs; };
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
