local set = vim.keymap.set
set("n", "<Tab>",           ":BufferLineCycleNext<CR>",  {desc = "Next buffer"})
set("n", "<S-Tab>",         ":BufferLineCyclePrev<CR>",  {desc = "Previous buffer"})
set("n", "<Leader><Tab>",   ":BufferLineCloseRight<CR>", {desc = "Close all buffers to the right"})
set("n", "<Leader><S-Tab>", ":BufferLineCloseLeft<CR>",  {desc = "Close all buffers to the left"})
