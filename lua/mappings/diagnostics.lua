local set = vim.keymap.set

set("n", "<leader>de", vim.diagnostic.open_float, {desc = " Opens diagnosics info."                        })
set("n", "<leader>dq", vim.diagnostic.setloclist, {desc = " Opens all file diagnostics in a seperate pane."})
