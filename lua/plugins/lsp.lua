return {

  { "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  { "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "intelephense", "ts_ls", "eslint", "pylsp" },
        automatic_installation = true,
      })
    end,
  },

  { "neovim/nvim-lspconfig",       -- ← uno solo!
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      require("lsp.pylsp")
      require("lsp.intelephense")
      require("lsp.ts_ls")
      require("lsp.eslint")
    end,
  },

}
