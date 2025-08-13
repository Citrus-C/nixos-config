{pkgs, ...}:

{
  home.packages = with pkgs; [
    fastfetch
    gh
  ];

  programs.git = {
    enable = true;
        
  };
}