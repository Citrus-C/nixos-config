{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    asusctl
    supergfxctl
  ];

  services.asusd = {
    enable = true;
    enableUserService = true;
  };

  services.supergfxd = {
    enable = true;
    settings = {
      mode = "Hybrid"; # 开机默认 GPU 模式: "Integrated" / "Hybrid" / "Vfio"
      vfio_enable = false; # 是否启用 VFIO 直通
      vfio_save = false; # 是否保存 VFIO 状态
      always_reboot = false; # 切换模式后是否总是重启
      no_logind = false; # 是否禁用 logind 集成
      logout_timeout_s = 180; # 切换模式时等待会话退出的秒数
      hotplug_type = "None"; # 热插拔类型: "None" / "Asus"
    };
  };

  services.dbus.enable = true;
  security.polkit.enable = true;
  boot.kernelModules = [
    "asus-nb-wmi"
    "acpi_call"
  ];

  boot.kernelPackages = pkgs.linuxPackages_latest;
}
