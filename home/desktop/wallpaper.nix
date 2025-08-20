{ config, pkgs, ... }:

{
  services.wpaperd = {
    enable = true;
    settings = {
      default = {
        path = "${config.home.homeDirectory}/Pictures/Wallpapers";
        mode = "fill";
        duration = "30m";
      };
    };
  };
}
