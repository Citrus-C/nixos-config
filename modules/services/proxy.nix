{ config, pkgs, ... }:

{
  services.dae = {
    enable = true;

    openFirewall = {
      enable = true;
      port = 12345;
    };

    configFile = "/etc/dae/config.dae";

    /*
      default options

      package = inputs.daeuniverse.packages.x86_64-linux.dae;
      disableTxChecksumIpGeneric = false;
      configFile = "/etc/dae/config.dae";
      assets = with pkgs; [ v2ray-geoip v2ray-domain-list-community ];
    */

    # alternative of `assets`, a dir contains geo database.
    # assetsPath = "/etc/dae";
  };

  # daed - dae with a web dashboard
  services.daed = {
    enable = true;

    openFirewall = {
      enable = true;
      port = 12345;
    };

    /*
      default options

      package = inputs.daeuniverse.packages.x86_64-linux.daed;
      configDir = "/etc/daed";
      listen = "127.0.0.1:2023";
    */
  };

  services.mihomo = {
    enable = false;
    package = pkgs.mihomo;
    tunMode = true;
    webui = pkgs.metacubexd;
    configFile = "/home/fall_dust/data/Files/proxy/mihomo/config.yaml"; # 你的配置文件路径
  };
}
