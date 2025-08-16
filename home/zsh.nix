{ pkgs, ...}:

{
  programs.zsh = {
    enable = true;

    oh-my-zsh = {
      enable = true;
      plugins = [ "vi-mode" "jump" ];
      theme = "agnoster";
    };
  };
}