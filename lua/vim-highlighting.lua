local hl = vim.api.nvim_set_hl
hl(0, "Normal",              { bg="NONE"    })
hl(0, "DiagnosticSignWarn",  { bg="NONE"    }) -- Orange foreground for warnings
hl(2, "DiagnosticSignInfo",  { bg="NONE"    }) -- Blue foreground for info
hl(0, "DiagnosticSignHint",  { bg="NONE"    }) -- Green foreground for hints
hl(0, "DiagnosticSignError", { bg="NONE"    }) -- Green foreground for hints
hl(0, "Comment",             { fg="#b0b0b0" })
