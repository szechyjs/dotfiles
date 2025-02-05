-- top bufferline/tabs
return {
  'akinsho/bufferline.nvim',
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = {
    options = {
      -- numbers = 'buffer_id',
      diagnostics = 'nvim_lsp',
    },
  },
}
