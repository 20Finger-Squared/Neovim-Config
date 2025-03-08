local set = vim.keymap.set
return {
  set("n", "<C-n>", ":Neotree toggle left<CR>", {}),
  set("n", "<leader>nb", ":Neotree buffers reveal float<CR>", {}),
}
