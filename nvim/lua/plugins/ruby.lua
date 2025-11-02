-- tries to resolve version manager issues
local util = require("lspconfig.util")

return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ruby_lsp = {
        mason = false,
        cmd = { vim.fn.expand("~/.local/share/mise/shims/ruby-lsp") },
      },
      rubocop = {
        mason = false,
        cmd = { vim.fn.expand("~/.local/share/mise/shims/rubocop"), "--lsp" },
      },
      steep = {
        mason = false,
        cmd = { vim.fn.expand("~/.local/share/mise/shims/steep"), "langserver" },
        root_dir = util.root_pattern("Steepfile"),
      },
    },
  },
}
