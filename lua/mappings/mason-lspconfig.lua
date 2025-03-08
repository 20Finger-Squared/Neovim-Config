local set = vim.keymap.set
return {
  set("n", "gd", vim.lsp.buf.definition, {}),                                                       -- requires mason.lspconfig
  set("n", "<leader>fm", vim.lsp.buf.format, {}),
  set("n", "K", vim.lsp.buf.hover, {}),                                                             -- requires mason.lspconfig
  set("n", "<leader>ca", vim.lsp.buf.code_action, {}),                                              -- requires mason.lspconfig
}
