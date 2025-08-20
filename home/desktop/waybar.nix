{ config, pkgs, ...}:

{
  programs.waybar = {
    enable = true;
    systemd = {
      enable = true;
      target = config.wayland.systemd.target;
    };
  };
}
