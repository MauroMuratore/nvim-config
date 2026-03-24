local M = {}

local keymaps = require("keymaps")

M.capabilities = require("cmp_nvim_lsp").default_capabilities()

M.on_attach = function(_, bufnr)
  keymaps.lsp_keymaps(bufnr)
end

return M
