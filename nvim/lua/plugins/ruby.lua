-- tries to resolve asdf issues
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
      },
    },
  },
}
