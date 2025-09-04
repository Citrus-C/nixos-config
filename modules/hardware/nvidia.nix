{ config, pkgs, ... }:

{
  services.xserver.videoDrivers = [ "nvidia" ];

  # Enable OpenGL
  hardware.graphics = {
    enable = true;
  };

  hardware.nvidia = {
    open = false;
    modesetting.enable = true;
    nvidiaSettings = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
    forceFullCompositionPipeline = true;
    prime = {
      offload.enable = true;
      # Make sure to use the correct Bus ID values for your system!
      intelBusId = "PCI:0:2:0";
      nvidiaBusId = "PCI:1:0:0";
    };
  };

  boot.kernelParams = [ "modprobe.blacklist=nouveau" ];

  # 启用 Wayland 支持（可选但推荐）
  environment.sessionVariables = {
    __GLX_VENDOR_LIBRARY_NAME = "nvidia";
    WLR_NO_HARDWARE_CURSORS = "1"; # 某些情况下可解决光标问题
  };
}
