local map = vim.keymap.set

-- le tue keymaps globali normali...
-- map("n", ...) ecc.

-- ─── LSP (chiamata da on_attach) ───────────────────────
local M = {}

M.lsp_keymaps = function(bufnr)
  local opts = { buffer = bufnr, silent = true }

  -- LSP
  map("n", "gd",   vim.lsp.buf.definition,   opts)
  map("n", "gD", function()              
      vim.cmd("tab split")
      vim.lsp.buf.definition()
  end, opts) 
  map("n", "K",    vim.lsp.buf.hover,         opts)
  map("n", "gr",   vim.lsp.buf.references,    opts)
  map("n", "<F2>", vim.lsp.buf.rename,        opts)
  -- Diagnostic
  map("n", "<leader>ca", vim.lsp.buf.code_action,   opts)
  map("n", "<leader>e", vim.diagnostic.open_float, opts)
  map("n", "[d",        vim.diagnostic.goto_prev,  opts)
  map("n", "]d",        vim.diagnostic.goto_next,  opts)
end

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        M.lsp_keymaps(args.buf)
    end,
})

return M
