{config,  pkgs, ...}:

{
  services.dae = {
      enable = true;

      openFirewall = {
        enable = true;
        port = 12345;
      };

      configFile = "/etc/dae/config.dae";

      /* default options

      package = inputs.daeuniverse.packages.x86_64-linux.dae;
      disableTxChecksumIpGeneric = false;
      configFile = "/etc/dae/config.dae";
      assets = with pkgs; [ v2ray-geoip v2ray-domain-list-community ];

      */

      # alternative of `assets`, a dir contains geo database.
      # assetsPath = "/etc/dae";
  };
}