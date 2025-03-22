local set = vim.keymap.set
set("n", "<leader>fm", vim.lsp.buf.format(),     { desc = "Format code" })
set("n", "<leader>ca", vim.lsp.buf.code_action() { desc = "Show code actions" })
set("n", "gd",         vim.lsp.buf.definition(), { desc = "Go to definition" })
set("n", "K",          vim.lsp.buf.hover(),      { desc = "Show hover documentation" })

