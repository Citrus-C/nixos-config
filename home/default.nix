{ config, pkgs, ... }:

{
  imports = [
    ./core.nix
    ./home.nix
    ./vscode.nix
  ];
}
