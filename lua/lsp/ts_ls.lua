local utils = require("lsp.utils")

vim.lsp.config("ts_ls", {
  capabilities = utils.capabilities,
  on_attach = utils.on_attach,
  filetypes = {
    "javascript", "javascriptreact",
    "typescript", "typescriptreact",
  },
})
vim.lsp.enable("ts_ls")
