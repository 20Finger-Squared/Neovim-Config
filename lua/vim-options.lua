-- loaded before plugins
vim.g.nofsync = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.spell = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.spelllang = "en_gb"
vim.g.mapleader = " "
-- folding settings
vim.opt.foldenable = true
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99
vim.opt.foldcolumn = "1"

vim.api.nvim_set_hl(0, "BufferLineFill", { bg = "NONE" })
vim.api.nvim_set_hl(0, "BufferLineBackground", { bg = "NONE" })

-- Set the selected buffer's background to transparent as well
vim.api.nvim_set_hl(0, "BufferLineBufferSelected", { fg = "#ffffff", bg = "NONE", italic = true })

-- Set the non-selected buffer's background (can still be transparent)
vim.api.nvim_set_hl(0, "BufferLineBuffer", { fg = "#ffffff", bg = "NONE", bold = true })

-- Set the separator background to transparent
vim.api.nvim_set_hl(0, "BufferLineSeparator", { fg = "#000000", bg = "NONE" })
vim.api.nvim_set_hl(0, "BufferLineSeparatorSelected", { fg = "#ffffff", bg = "NONE" })

