{
  config,
  lib,
  pkgs,
  ...
}:

{
  swapDevices = [
    {
      device = "/swap/swapfile";
      size = 64 * 1024;
    }
  ];
}
