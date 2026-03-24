return {
  "mikavilpas/yazi.nvim",
  version = "*",
  event = "VeryLazy",
  dependencies = {
    { "nvim-lua/plenary.nvim", lazy = true },
  },
  keys = {
    { "<leader>-",  mode = { "n", "v" }, "<cmd>Yazi<cr>",        desc = "Apri yazi sul file corrente" },
    { "<leader>=",                      "<cmd>Yazi cwd<cr>",    desc = "Apri yazi nella working directory" },
    { "<c-up>",                          "<cmd>Yazi toggle<cr>", desc = "Riprendi l'ultima sessione yazi" },
  },
  opts = {
    open_for_directories = false,
    keymaps = { show_help = "<f1>" },
  },
}
