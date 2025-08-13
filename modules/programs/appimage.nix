{ config, pkgs, ... }:

{
  programs.appimage = {
    enable = true;
    binfmt = true;
    package = pkgs.appimage-run.override {
      extraPkgs = pkgs: [
        pkgs.python312
        pkgs.libGL
        pkgs.gtk3
        pkgs.libepoxy
      ];
    };
  };
}