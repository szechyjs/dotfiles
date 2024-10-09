return {
  {
    'williamboman/mason.nvim',
    lazy = false,
    config = function()
      require("mason").setup()
    end
  },
  {
    'williamboman/mason-lspconfig.nvim',
    lazy = false,
    opts = {
      automatic_installation = true,
    },
  },
  {
    'neovim/nvim-lspconfig',
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.ts_ls.setup({
        capabilities = capabilities
      })
      lspconfig.gopls.setup({
        capabilities = capabilities
      })
      lspconfig.rubocop.setup({
        capabilities = capabilities
      })
      lspconfig.ruby_lsp.setup({
        capabilities = capabilities
      })
      lspconfig.rust_analyzer.setup({
        capabilities = capabilities
      })
      lspconfig.dartls.setup({
        capabilities = capabilities
      })
      lspconfig.jinja_lsp.setup({
        capabilities = capabilities
      })
      lspconfig.angularls.setup{}
      lspconfig.steep.setup{
        root_dir = lspconfig.util.root_pattern("Steepfile"),
      }

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Show hover' })
      vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, { desc = 'Go to definition' })
      vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, { desc = 'Go to references' })
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code action' })

      -- TODO: figure out how to get border without this
      local border = {
        { '┌', 'FloatBorder' },
        { '─', 'FloatBorder' },
        { '┐', 'FloatBorder' },
        { '│', 'FloatBorder' },
        { '┘', 'FloatBorder' },
        { '─', 'FloatBorder' },
        { '└', 'FloatBorder' },
        { '│', 'FloatBorder' },
      }

      local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
      function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
        opts = opts or {}
        opts.border = opts.border or border
        return orig_util_open_floating_preview(contents, syntax, opts, ...)
      end
    end
  }
}
