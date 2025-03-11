-- loaded before plugins
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.cmd("set relativenumber")
vim.cmd("set termguicolors")
-- folding settings
vim.opt.foldmethod = "indent"  -- Use indentation-based folding
vim.opt.foldenable = true      -- Enable folding by default
vim.opt.foldlevel = 99         -- Start with all folds open
vim.opt.foldlevelstart = 99    -- Open all folds by default
