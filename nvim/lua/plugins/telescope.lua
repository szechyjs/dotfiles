return {
  -- Fuzzy finder for files, buffers, git, grep, etc.
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Find files' })
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Search files' }) -- requires ripgrep
      vim.keymap.set('n', '<leader>bb', builtin.buffers, { desc = 'Buffers' })
      vim.keymap.set('n', '<leader>cf', builtin.treesitter, { desc = 'Search code' })
    end,
    opts = {
      open_files_do_not_replace_types = { 'terminal', 'Trouble', 'qf', 'edgy' },
    },
  },
  -- sets nvim core to use telescope for things like code actions
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require('telescope').setup({
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown {}
          }
        }
      })
      require('telescope').load_extension('ui-select')
    end
  }
}
