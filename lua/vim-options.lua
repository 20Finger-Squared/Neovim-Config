-- loaded before plugins
vim.g.nofsync = true -- mainly for windows I have no idea what it does
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.spell = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.spelllang = "en_gb"

-- if you don't think this should be default you're mad
vim.g.mapleader = " "

-- folding settings
vim.opt.foldenable = true
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99
vim.opt.foldcolumn = "5"

vim.api.nvim_create_autocmd("FileType", { -- for some reason neovim likes tab to be 4
  pattern = "python",
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
})

-- Opens the last closed buffer
vim.api.nvim_create_user_command( 'Arise', function() print("TODO") end, { nargs = 0 })
