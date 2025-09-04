{ config, pkgs, ... }:

{
  # List packages installed in system profile.
  # You can use https://search.nixos.org/ to find more packages (and options).
  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    git
    whois
    lshw
    smartmontools
    parted
    bottles
    heroic
    dmidecode
    nix-ld
    tree
    icu

    # zsh

    # office
    libreoffice

    # unzip
    p7zip
    unrar
    unzip

    ffmpeg-full
    openh264
    gst_all_1.gst-libav
    gst_all_1.gst-plugins-bad
    gst_all_1.gst-plugins-ugly

    brightnessctl
    power-profiles-daemon
  ];
}
