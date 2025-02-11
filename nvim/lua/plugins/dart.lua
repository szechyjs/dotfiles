return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        dartls = {},
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "dart" } },
  },
}
