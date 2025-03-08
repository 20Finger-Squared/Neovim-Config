local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")
for _, file in ipairs(vim.fn.readdir(vim.fn.stdpath('config') .. "/lua/mappings", [[v:val =~ '\.lua$']])) do
    local module_name = file:gsub("%.lua$", "")
    require("mappings." .. module_name)
end
