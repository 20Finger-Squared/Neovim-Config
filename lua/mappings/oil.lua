local oil = require("oil")
local set = vim.keymap.set

set("n", "<leader>ow", function() oil.toggle_float() end, { desc = "Open oil window" })
