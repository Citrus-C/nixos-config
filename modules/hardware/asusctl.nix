{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    asusctl
  ];
}
