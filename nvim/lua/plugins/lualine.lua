return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'AndreM222/copilot-lualine' },
  config = function()
    require('lualine').setup({
      options = {
        theme = 'catppuccin-mocha',
      },
      sections = {
        lualine_x = { {'copilot', show_colors = true }, 'encoding', 'fileformat', 'filetype' },
      },
    })
  end
}
