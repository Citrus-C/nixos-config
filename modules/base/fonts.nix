{ config, pkgs, ... }:

{
  # Select internationalisation properties.
  i18n.defaultLocale = "zh_CN.UTF-8";
  # console = {
  #   font = "Lat2-Terminus16";
  #   keyMap = "us";
  #   useXkbConfig = true; # use xkb.options in tty.
  # };

  fonts = {
    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      
      source-code-pro
      hack-font
      jetbrains-mono

      font-awesome
      material-design-icons
      nerd-fonts.jetbrains-mono
      nerd-fonts.hack
      nerd-fonts.fira-code
      nerd-fonts.symbols-only
    ];

    # 简单配置一下 fontconfig 字体顺序，以免 fallback 到不想要的字体
    fontconfig = {
      defaultFonts = {
        emoji = [ "Noto Color Emoji" ];
        monospace = [
          "JetBrainsMono Nerd Font"
          "Font Awesome 6 Free"
          "Material Design Icons"
          "Noto Sans Mono CJK SC"
          "Sarasa Mono SC"
          "DejaVu Sans Mono"
        ];
        sansSerif = [
          "JetBrainsMono Nerd Font"
          "Font Awesome 6 Free"
          "Material Design Icons"
          "Noto Sans CJK SC"
          "Source Han Sans SC"
          "DejaVu Sans"
        ];
        serif = [
          "Noto Serif CJK SC"
          "Source Han Serif SC"
          "DejaVu Serif"
        ];
      };
    };
  };


  i18n.inputMethod = {
    enable = true;

    # fcitx5
    type = "fcitx5";
    fcitx5.addons = with pkgs; [
      fcitx5-rime
      rime-data
      fcitx5-chinese-addons
      fcitx5-configtool
    ];
  };
}
