local set = vim.keymap.set
set("n", "<leader>fm", function() vim.lsp.buf.format() end,      { desc = "Format code"              })
set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, { desc = "Show code actions"        })
set("n", "gd",         function() vim.lsp.buf.definition() end,  { desc = "Go to definition"         })
set("n", "K",          function() vim.lsp.buf.hover() end,       { desc = "Show hover documentation" })
