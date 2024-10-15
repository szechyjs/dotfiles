return {
  "folke/which-key.nvim",
  opts = {
    defaults = {
      ['g'] = { name = "+goto" },
      [']'] = { name = '+next' },
      ['['] = { name = '+prev' },
      ['<leader>b'] = { name = '+buffer' },
      ['<leader>c'] = { name = '+code' },
      ['<leader>f'] = { name = '+find' },
      ['<leader>g'] = { name = '+goto' },
      -- ['<leader>n'] = { name = '+test' },
    },
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
    wk.register(opts.defaults)
  end
}
