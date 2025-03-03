-- Ensure `lazy.nvim` is added to the runtime path
vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")

-- Set up lazy.nvim
require("lazy").setup("plugins")

-- set up keymaps
require('core.keymaps')

-- Basic settings
vim.o.number = true                -- Show line numbers
vim.o.relativenumber = true        -- Relative line numbers
vim.o.tabstop = 4                  -- Number of spaces for a tab
vim.o.shiftwidth = 4               -- Number of spaces for autoindent
vim.o.expandtab = false -- Use spaces instead of tabs
