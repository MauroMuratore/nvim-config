local utils = require("lsp.utils")

vim.lsp.config("pylsp", {
  capabilities = utils.capabilities,
  settings = {
    pylsp = {
      plugins = {
        pycodestyle     = { enabled = true, ignore = { "E501", "E251" } },
        flake8          = { enabled = false },
        black           = { enabled = true },
        isort           = { enabled = true },
        mypy            = { enabled = true },
        rope_autoimport = { enabled = true },
        pyflakes        = { enabled = true },
      },
    },
  },
})
vim.lsp.enable("pylsp")
