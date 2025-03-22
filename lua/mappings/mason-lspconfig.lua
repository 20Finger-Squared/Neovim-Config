local set = vim.keymap.set

set("n", "gd", function()
    if vim.lsp.buf.server_ready() then vim.lsp.buf.definition() end
end, { desc = "Go to definition" })

set("n", "<leader>fm", function()
    if vim.lsp.buf.server_ready() then vim.lsp.buf.format() end
end, { desc = "Format code" })

set("n", "K", function()
    if vim.lsp.buf.server_ready() then vim.lsp.buf.hover() end
end, { desc = "Show hover documentation" })

set("n", "<leader>ca", function()
    if vim.lsp.buf.server_ready() then vim.lsp.buf.code_action() end
end, { desc = "Show code actions" })

