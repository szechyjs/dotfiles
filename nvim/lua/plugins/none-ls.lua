-- community fork of null-ls.nvm
-- uses null-ls to provide linting and formatting for various languages
return {
  'nvimtools/none-ls.nvim',
  config = function()
    local null_ls = require('null-ls')
    null_ls.setup({
      sources = {
        null_ls.builtins.diagnostics.rubocop,
        null_ls.builtins.diagnostics.erb_lint,
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.rubocop,
        null_ls.builtins.formatting.goimports,
      }
    })

    vim.keymap.set('n', '<leader>bf', vim.lsp.buf.format, { desc = 'Format file'})
  end
}
