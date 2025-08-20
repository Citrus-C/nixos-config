{
  config,
  pkgs,
  inputs,
  system,
  ...
}:

{
  home.packages = with pkgs; [
    fastfetch
    gh
    # terminal
    alacritty

    # browsers
    brave
    chromium
    firefox

    # chat Tools
    ayugram-desktop
    deltachat-desktop
    telegram-desktop

    # tools
    android-tools
    localsend
    scrcpy
    qtscrcpy

    # other
    xfce.exo
    copyq
  ];
}
