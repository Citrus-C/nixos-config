{ pkgs, ... }:

{
  home.packages = with pkgs; [ 
    zed-editor

    nil
    nixpkgs-fmt
];

  programs.vscode = {
    enable = true;

    extensions = with pkgs.vscode-extensions; [
      ms-ceintl.vscode-language-pack-zh-hans
      jnoortheen.nix-ide
    ];

    userSettings = {
      "locale" = "zh-cn";
      "editor.fontSize" = 14; # 控制代码字体大小
      "editor.tabSize" = 2; # 控制缩进宽度
      "files.autoSave" = "onFocusChange"; # 自动保存

      "nix.enableLanguageServer" = true;
      "nix.serverPath" = "nil";
      "nix.formatterPath" = "nixpkgs-fmt";
    };
  };
}
