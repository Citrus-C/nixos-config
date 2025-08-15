{config, pkgs, ...}:

{
  home.packages = with pkgs; [
    #browsers
    brave
    chromium

    # chat Tools
    telegram-desktop
    ayugram-desktop
    deltachat-desktop

    # other
    localsend
  ];

  programs.firefox.enable = true;
}