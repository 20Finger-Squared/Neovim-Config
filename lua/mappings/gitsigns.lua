local set = vim.keymap.set
vim.api.nvim_set_keymap("n", "]c",         ":GitGutterNextHunk<CR>",    { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "[c",         ":GitGutterPrevHunk<CR>",    { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gs", ":GitGutterStageHunk<CR>",   { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gu", ":GitGutterUndoHunk<CR>",    { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gp", ":GitGutterPreviewHunk<CR>", { noremap = true, silent = true })
