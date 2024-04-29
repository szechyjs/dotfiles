return {
  {
    'nvim-telescope/telescope.nvim',
    branch = "0.1.6",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Find files' })
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Search files' }) -- requires ripgrep
    end
  },
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
