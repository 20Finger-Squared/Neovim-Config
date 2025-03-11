-- Tabular keymap to align text (use <Leader>a to align)
local set = vim.keymap.set
set('n', '<Leader>a', ':Tabularize /=<CR>', { noremap = true, silent = true })

