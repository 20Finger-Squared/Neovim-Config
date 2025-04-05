local set = vim.keymap.set
set("n", "<leader>fm", vim.lsp.buf.format,         { desc = "Format code" })
set("n", "<leader>ca", vim.lsp.buf.code_action,    { desc = "Show code actions" })
set("n", "K",          vim.lsp.buf.hover,          { desc = "Show hover documentation" })
set("n", "<leader>sh", vim.lsp.buf.signature_help, { desc = "Show signature help" })
set("n", "gd",         vim.lsp.buf.definition,     { desc = "Go to definition" })
set("n", "gr",         vim.lsp.buf.references,     { desc = "Find references" })
set("n", "<leader>rn", vim.lsp.buf.rename,         { desc = "Rename symbol" })
