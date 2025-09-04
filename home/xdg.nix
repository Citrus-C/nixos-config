{ config, pkgs, ... }:

let
  # 定义 dotfiles 根目录变量
  dotfiles = "${config.home.homeDirectory}/nixos-config/dotfiles";
in
{
  xdg.configFile = {
    # 直接用变量拼接子目录
    "niri".source = config.lib.file.mkOutOfStoreSymlink "${dotfiles}/niri";
    "waybar".source = config.lib.file.mkOutOfStoreSymlink "${dotfiles}/waybar";
    "nvim".source = config.lib.file.mkOutOfStoreSymlink "${dotfiles}/nvim";
    "helix".source = config.lib.file.mkOutOfStoreSymlink "${dotfiles}/helix";
    # 其他应用同理...
    # "kitty".source  = config.lib.file.mkOutOfStoreSymlink "${dotfiles}/kitty";
  };
}

# {
#   xdg.configFile = {
#     # "kitty".source = ../dotfiles/kitty;
#     # "kanshi".source = ../dotfiles/kanshi;
#     # "swaylock".source = ../dotfiles/swaylock;

#     "niri".source =
#       config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/nixos-config/dotfiles/niri";
#   };

#   xdg.configFile."waybar".source =
#     config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/nixos-config/dotfiles/waybar";

#   # 创建软链接，把 dotfiles/nvim 接管 ~/.config/nvim
#   home.file.".config/nvim".source = ../dotfiles/nvim;

# }
