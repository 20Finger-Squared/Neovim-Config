local set = vim.keymap.set
set("n", ";", ":")
set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
set("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
set("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })
