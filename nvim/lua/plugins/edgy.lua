-- manage window layouts
return {
  "folke/edgy.nvim",
  event = "VeryLazy",
  init = function()
    local edgy = require('edgy')

    vim.opt.laststatus = 3
    vim.opt.splitkeep = "screen"

    vim.keymap.set('n', '<D-b>', function()
      edgy.toggle('left')
    end, { desc = 'Toggle sidebar' })
  end,
  opts = {
    bottom = {
      {
        ft = 'toggleterm',
        size = { height = 0.4 },
        -- exclude floating windows
        filter = function(buf, win)
          return vim.api.nvim_win_get_config(win).relative == ''
        end,
      },
      'Trouble',
      { ft = 'qf', title = 'QuickFix' },
      {
        ft = 'help',
        size = { height = 20 },
        -- only show help buffers
        filter = function(buf)
          return vim.bo[buf].buftype == 'help'
        end,
      },
    },
    left = {
      {
        title = 'Neo-Tree Buffers',
        ft = 'neo-tree',
        filter = function(buf)
          return vim.b[buf].neo_tree_source == 'buffers'
        end,
        -- pinned = true,
        -- collapsed = true,
        open = 'Neotree position=top buffers',
      },
      'neo-tree',
    },
  },
}
