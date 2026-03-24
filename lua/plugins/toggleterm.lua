return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      shade_terminals = true,
    })

    local Terminal = require("toggleterm.terminal").Terminal

    -- terminali con direzioni diverse
    local float  = Terminal:new({ direction = "float",      id = 1 })
    local bottom = Terminal:new({ direction = "horizontal", id = 2, size = 15 })
    local left   = Terminal:new({ direction = "vertical",   id = 3, size = 40 })
    local right  = Terminal:new({ direction = "vertical",   id = 4, size = 40 })

    local map = vim.keymap.set
    local opts = { noremap = true, silent = true }

    map("n", "<C-t><Space>", function() float:toggle()  end, opts)  -- floating
    map("n", "<C-t>j",       function() bottom:toggle() end, opts)  -- sotto
    map("n", "<C-t>h",       function() left:toggle()   end, opts)  -- sinistra
    map("n", "<C-t>l",       function() right:toggle()  end, opts)  -- destra

    -- esci da terminal mode con esc
    vim.api.nvim_create_autocmd("TermOpen", {
      pattern = "term://*toggleterm#*",
      callback = function()
        local topts = { buffer = 0 }
        map("t", "<esc>", [[<C-\><C-n>]], topts)
        map("t", "<C-h>", [[<C-\><C-n><C-W>h]], topts)
        map("t", "<C-j>", [[<C-\><C-n><C-W>j]], topts)
        map("t", "<C-l>", [[<C-\><C-n><C-W>l]], topts)
      end,
    })
  end,
}

