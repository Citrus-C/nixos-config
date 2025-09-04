{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    xorg.xcursorthemes
    gnome-themes-extra
    adwaita-icon-theme
  ];

  environment.variables = {
    XCURSOR_THEME = "Adwaita";
  };
}
