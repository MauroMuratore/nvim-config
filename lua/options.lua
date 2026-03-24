vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.api.nvim_create_autocmd("TextYankPost", {
        desc = "Highlight on yank",
        group = vim.api.nvim_create_augroup("HighlightYank", { clear = true }),
        callback = function()
                vim.highlight.on_yank({
                        higroup = "IncSearch", -- colore
                        timeout = 500,         -- millisecondi
                })
        end,
})
