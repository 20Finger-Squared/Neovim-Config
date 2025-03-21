local set = vim.keymap.set
set("n", "<leader>z", ":lua MiniMisc.zoom()<CR>", {desc="Zooms in the current buffer", noremap=true, silent=true})
