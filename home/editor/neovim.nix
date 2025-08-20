{ pkgs, ...}:

{
  programs.neovim = {
    enable = true;

    extraPackages = with pkgs; [
      git
    ];

    plugins = with pkgs.vimPlugins; [
      LazyVim
      bufferline-nvim
      neo-tree-nvim
      nvim-web-devicons
      which-key-nvim
      toggleterm-nvim

      nvim-lspconfig
      mason-nvim
      mason-lspconfig-nvim
      nvim-cmp
      cmp-nvim-lsp
    ];
  };
}