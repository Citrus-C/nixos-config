{
  config,
  pkgs,
  ...
}:

{
  home.username = "fall_dust";
  home.homeDirectory = "/home/fall_dust";
  home.stateVersion = "25.05";

  programs.home-manager.enable = true;
}
