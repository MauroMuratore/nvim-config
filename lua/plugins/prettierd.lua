return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    formatters_by_ft = {
      javascript   = { "prettierd", "prettier", stop_after_first = true },
      typescript   = { "prettierd", "prettier", stop_after_first = true },
      jsx          = { "prettierd", "prettier", stop_after_first = true },
      tsx          = { "prettierd", "prettier", stop_after_first = true },
      css          = { "prettierd", "prettier", stop_after_first = true },
      html         = { "prettierd", "prettier", stop_after_first = true },
      json         = { "prettierd", "prettier", stop_after_first = true },
      yaml         = { "prettierd", "prettier", stop_after_first = true },
      markdown     = { "prettierd", "prettier", stop_after_first = true },
    },
    -- Formatta automaticamente al salvataggio
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
  },
  keys = {
    {
      "<leader>f",
      function()
        require("conform").format({ async = true, lsp_fallback = true })
      end,
      desc = "Format buffer",
    },
  },
}
