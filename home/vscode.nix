{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;

    extensions = with pkgs.vscode-extensions; [
#       ms-python.python
#       ms-vscode.cpptools
#       esbenp.prettier-vscode
#       ms-vscode.vscode-typescript-next
#       ms-vscode.live-server
    ];

    userSettings = {
#       "editor.fontSize" = 14;
#       "editor.tabSize" = 2;
#       "editor.minimap.enabled" = false;
#       "workbench.colorTheme" = "Default Dark+";
#       "files.autoSave" = "onFocusChange";
#       "terminal.integrated.fontFamily" = "JetBrains Mono";
    };
  };
}
