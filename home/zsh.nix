{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;

    # 启用补全系统
    enableCompletion = true;

    # 自动建议（根据历史命令实时提示）
    autosuggestion.enable = true;

    # 语法高亮
    syntaxHighlighting.enable = true;

    # oh-my-zsh 配置
    oh-my-zsh = {
      enable = true;
      theme = "agnoster";
      plugins = [
        "git"
        "vi-mode"
        "jump"
        "z" # 快速跳转目录
        "extract" # 解压各种压缩包
      ];
    };
  };
}
