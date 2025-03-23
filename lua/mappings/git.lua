local set = vim.api.nvim_set_keymap

set("n", "<leader>lg", ":LazyGit<CR>",              { desc = "LazyGit" })
set("n", "]c",         ":GitGutterNextHunk<CR>",    { noremap = true, silent = true })
set("n", "[c",         ":GitGutterPrevHunk<CR>",    { noremap = true, silent = true })
set("n", "<leader>gs", ":GitGutterStageHunk<CR>",   { noremap = true, silent = true })
set("n", "<leader>gu", ":GitGutterUndoHunk<CR>",    { noremap = true, silent = true })
set("n", "<leader>gp", ":GitGutterPreviewHunk<CR>", { noremap = true, silent = true })
