local set = vim.keymap.set
set("n", "<Tab>",           ":BufferLineCycleNext<CR>")
set("n", "<S-Tab>",         ":BufferLineCyclePrev<CR>")
set("n", "<Leader><Tab>",   ":BufferLineCloseRight<CR>")
set("n", "<Leader><S-Tab>", ":BufferLineCloseLeft<CR>")
