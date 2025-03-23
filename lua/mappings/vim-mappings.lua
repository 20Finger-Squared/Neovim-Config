local set = vim.keymap.set
set("n", ";",          ":",                        { desc = "Makes it more easy to enter cmdline"      })
set("n", "<leader>wb", ":bdelete<CR>",             { desc = "Close current buffer"                     })
