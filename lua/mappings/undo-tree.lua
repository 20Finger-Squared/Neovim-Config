local undotree = require("undotree")
local set = vim.keymap.set
set("n", "<leader>ut", function() undotree.toggle() end, { desc = "Toggle undotree" })
