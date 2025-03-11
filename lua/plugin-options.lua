-- used for options that need to be loaded after plugins not strictly just for plugin options 
vim.cmd("colorscheme gruvbox-material")
vim.api.nvim_create_autocmd("FileType", {
  pattern = "neo-tree",
  callback = function()
    vim.opt_local.foldenable = false
    vim.opt_local.foldmethod = "manual"
  end,
})

