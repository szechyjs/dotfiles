return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup({
      close_if_last_window = true,
    })

    vim.keymap.set('n', '<C-n>', ':Neotree filesystem toggle left<CR>', { desc = 'Toggle file tree' })
    vim.keymap.set('n', '<leader>bp', ':Neotree filesystem reveal float<CR>', { desc = 'Reveal file tree' })
  end
}
