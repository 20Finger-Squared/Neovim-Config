local set = vim.keymap.set

set("n", "<leader>lf", vim.lsp.buf.format,         { desc = " Format code"         })
set("n", "<leader>ld", vim.lsp.buf.definition,     { desc = " Go to definition"    })
set("n", "<leader>lr", vim.lsp.buf.references,     { desc = " Find references"     })
set("n", "<leader>lc", vim.lsp.buf.code_action,    { desc = " Show code actions"   })
set("n", "<leader>lK", vim.lsp.buf.hover,          { desc = " Show hover doc"      })
set("n", "<leader>ls", vim.lsp.buf.signature_help, { desc = " Show signature help" })
set("n", "<leader>ln", vim.lsp.buf.rename,         { desc = " Rename symbol"       })

