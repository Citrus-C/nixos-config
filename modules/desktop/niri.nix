{config, pkgs, ...}:

{
  #   programs.niri.enable = true;
#
#   # niri 默认文件选择是 nautilus，如果用其它文件管理器这里需要改成 gtk
#   # https://github.com/YaLTeR/niri/wiki/Important-Software#portals
#   xdg.portal.config.niri."org.freedesktop.impl.portal.FileChooser" = "gtk";
#
#   services.greetd = {
#     enable = true;
#     settings = {
#       default_session = {
#         command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --asterisks --remember --remember-session --sessions ${config.services.displayManager.sessionData.desktops}/share/wayland-sessions";
#       };
#     };
#   };
#
#   programs.thunar = {
#     enable = true;
#     plugins = with pkgs.xfce; [
#       thunar-volman
#       thunar-archive-plugin
#     ];
#   };
#
#   # polkit agent
#   security.soteria.enable = true;
#
#   # 磁盘挂载
#   services.gvfs.enable = true;
#
#   # 压缩解压
#   programs.file-roller.enable = true;
}