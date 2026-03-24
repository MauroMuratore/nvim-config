local utils = require("lsp.utils")

vim.lsp.config("eslint", {
  capabilities = utils.capabilities,
  on_attach = function(client, bufnr)
    utils.on_attach(client, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      callback = function()
        local clients = vim.lsp.get_clients({ bufnr = bufnr, name = "eslint" })
        if #clients > 0 then
          vim.lsp.buf.format({ name = "eslint", bufnr = bufnr })
        end
      end,
    })
  end,
})
vim.lsp.enable("eslint")
