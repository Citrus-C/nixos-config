{ config, pkgs, ...}:

{
  services.zram-generator = {
    enable = true;
    package = pkgs.zram-generator;
    settings = {
      zram0 = {
        zram-size = "ram / 2";
        compression-algorithm = "zstd";
        # swap-priority = 5;
      };
    };
  };
}