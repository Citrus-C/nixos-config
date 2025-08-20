{ config, pkgs, ...}:

{
  xdg.configFile = {
    # "kitty".source = ../dotfiles/kitty;
    # "kanshi".source = ../dotfiles/kanshi;
    # "swaylock".source = ../dotfiles/swaylock;

    "niri".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/nixos-config/dotfiles/niri";
  };

  xdg.configFile."waybar".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/nixos-config/dotfiles/waybar";

  # 创建软链接，把 dotfiles/nvim 接管 ~/.config/nvim
  home.file.".config/nvim".source = ../dotfiles/nvim;
}