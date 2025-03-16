-- loaded before plugins
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("setlocal spell spelllang=en_uk")
vim.g.mapleader = " "
vim.cmd("set relativenumber")
vim.cmd("set termguicolors")
vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

-- folding settings
vim.opt.foldmethod = "indent"  -- Use indentation-based folding
vim.opt.foldenable = true      -- Enable folding by default
