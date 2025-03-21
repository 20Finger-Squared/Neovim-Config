local set = vim.keymap.set
set("n", "gd",         vim.lsp.buf.definition,  {})
set("n", "<leader>fm", vim.lsp.buf.format,      {})
set("n", "K",          vim.lsp.buf.hover,       {})
set("n", "<leader>ca", vim.lsp.buf.code_action, {})
