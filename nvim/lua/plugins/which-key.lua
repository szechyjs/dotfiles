-- provides a nice popup with keybindings
return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    preset = "modern",
    specs = {
      { "<leader>b", group = "buffer" },
      { "<leader>c", group = "code" },
      { "<leader>f", group = "find" },
      { "<leader>g", group = "goto" },
      { "<leader>n", group = "test" },
      { "<leader>x", group = "trouble" },
      { "[", group = "prev" },
      { "]", group = "next" },
    }
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
    wk.add(opts.specs)
  end
}
