vim.cmd("colorscheme gruvbox")

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.relativenumber = true
vim.opt.cursorline = true        -- Highlight the current line
vim.opt.mouse = "a"              -- Enable mouse support
vim.opt.termguicolors = true     -- Enable true color support
vim.opt.updatetime = 300         -- Faster updates (e.g. for LSP)
vim.opt.timeoutlen = 500         -- Time to wait for mapped sequence
vim.opt.signcolumn = "yes"       -- Always show sign column

vim.opt.wrap = false             -- No line wrap
vim.opt.scrolloff = 8            -- Keep cursor 8 lines from screen edge
vim.opt.sidescrolloff = 8
vim.opt.splitbelow = true        -- Horizontal splits open below
vim.opt.splitright = true        -- Vertical splits open to the right

vim.opt.completeopt = { "menu", "menuone", "noselect" } -- Better completion UI
vim.opt.conceallevel = 2         -- Useful for markdown and syntax conceal
vim.opt.virtualedit = "block"    -- Allow cursor anywhere in visual block

vim.opt.undofile = true

vim.opt.pumheight = 10     -- Max items in popup menu

vim.opt.foldmethod="indent"
