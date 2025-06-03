-- loaded before plugins

vim.g.nofsync = true -- mainly for windows I have no idea what it does
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.spell = true
vim.opt.spelllang = "en_gb"
vim.opt.cmdheight = 0

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.lsp.inlay_hint.enable(true, nil, 0)
vim.diagnostic.config({ virtual_text = true })

-- If you don't think this should be default you're mad
vim.g.mapleader = " "
vim.g.vimtex_view_method = "zathura"
vim.g.vimtex_view_general_viewer = 'zathura'
vim.g.vimtex_view_general_options = '--synctex-forward @line:@col:@tex @pdf'
-- vim.g.vimtex_view_general_options_latexmk = '--synctex-forward @line:@col:@tex @pdf'
vim.g.tex_flavor='latex'
vim.g.vimtex_quickfix_mode=0
vim.g.tex_conceal='abdmg'


vim.cmd("set conceallevel=1")

-- folding settings
vim.opt.foldenable = true
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99
vim.opt.foldcolumn = "3"

vim.api.nvim_create_user_command('Arise', function() print("TODO") end, { nargs = 0 })
