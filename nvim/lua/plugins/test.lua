return {
  "nvim-neotest/neotest",
  lazy = true,
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "zidhuss/neotest-minitest",
  },
  keys = { "<leader>n" },
  config = function()
    local neotest = require('neotest')
    neotest.setup({
      adapters = {
        require("neotest-minitest")
      }
    })

    vim.keymap.set('n', '<leader>nr', function()
      neotest.run.run({ vim.fn.expand("%:p") })
    end, { desc = 'Run file', noremap = true })
    vim.keymap.set('n', '<leader>nn', neotest.run.run, { desc = 'Run nearest', noremap = true })
    vim.keymap.set('n', '<leader>nx', neotest.run.stop, { desc = 'Stop', noremap = true })
    vim.keymap.set('n', '<leader>np', neotest.summary.toggle, { desc = 'Toggle summary', noremap = true })
    vim.keymap.set('n', '<leader>nm', neotest.summary.toggle, { desc = 'Run marked', noremap = true })
    vim.keymap.set('n', '<leader>ne', neotest.output_panel.toggle, { desc = 'Toggle output', noremap = true })
  end
}
