{
  description = "A simple NixOS flake";

  inputs = {
    # NixOS 官方软件源，这里使用 nixos-25.05 分支
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    # 重点：在这里添加 home-manager flake
    home-manager.url = "github:nix-community/home-manager";
    # 绑定 home-manager 到你使用的 nixpkgs 版本，保持一致性
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

#     clash-verge-rev.url = "github:clash-verge-rev/clash-verge-rev";
#     clash-verge-rev.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: {
    # TODO 请将下面的 my-nixos 替换成你的 hostname
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        # 这里导入之前我们使用的 configuration.nix，
        # 这样旧的配置文件仍然能生效
        ./nixos/configuration.nix

        # home-manager 模块导入集成到 nixos
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          # myname 跟你的用户名保持一致
          home-manager.users.fall_dust = import ./home-manager/home.nix;
        }

#         nixpkgs.overlays = [
#             inputs.nur.overlay
#             inputs.emacs-overlay.overlay
#             (import ./overlays)
#         ];
      ];
    };
  };
}
