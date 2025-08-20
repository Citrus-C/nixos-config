{config, pkgs, ...}:

{
  # 调整亮度音量显示
  services.avizo.enable = true;

  # 通知显示
  services.swaync.enable = true;

  # 根据不同的设备加载不同的显示器分辨率刷新率缩放
  # 就不用去 wm 里面一个一个配，导致每次换设备都要修改配置
  # https://wiki.archlinux.org/title/Kanshi
  services.kanshi.enable = true;

  # 夜光护眼软件
  services.wlsunset = {
    enable = true;
    sunset = "19:00";
    sunrise = "07:00";
  };


  # 让大部分 gtk 软件选暗色主题
  dconf.settings."org/gnome/desktop/interface".color-scheme = "prefer-dark";
  
  home.packages = with pkgs; [
    mako
    swaybg
    waypaper
    hyprlock
    swaylock-effects
    swayidle
    wlogout
    wlsunset
    fuzzel
    uwsm
    xwayland-satellite
    adwaita-icon-theme
    gnome-themes-extra
  ];
}
