-- Adds projects item to dashboard
-- https://www.lazyvim.org/plugins/ui#snacksnvim-2
return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    if not opts.picker then
      return
    end
    table.insert(opts.dashboard.preset.keys, 3, {
      icon = " ",
      key = "p",
      desc = "Projects",
      action = ":lua Snacks.picker.projects()",
    })
  end,
}
