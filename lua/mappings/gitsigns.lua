local set = vim.keymap.set
vim.api.nvim_set_keymap("n", "]c",         "<cmd>GitGutterNextHunk<CR>",    { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "[c",         "<cmd>GitGutterPrevHunk<CR>",    { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gs", "<cmd>GitGutterStageHunk<CR>",   { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gu", "<cmd>GitGutterUndoHunk<CR>",    { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gp", "<cmd>GitGutterPreviewHunk<CR>", { noremap = true, silent = true })
