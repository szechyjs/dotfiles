return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pylsp = {
        settings = {
          pylsp = {
            plugins = {
              pyflakes = { enabled = false },
              pycodestyle = { enabled = false },
              mccabe = { enabled = false },
              pylint = { enabled = false },
              flake8 = { enabled = false },
              autopep8 = { enabled = false },
            },
          },
        },
      },
    },
  },
}
