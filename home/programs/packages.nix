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
    qutebrowser

    # chat Tools
    ayugram-desktop
    deltachat-desktop
    telegram-desktop

    celluloid # video
    ffmpegthumbnailer # 视频缩略图
    poppler # PDF 缩略图
    libopenraw # RAW 照片缩略图
    imagemagick # 其他图片格式

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
