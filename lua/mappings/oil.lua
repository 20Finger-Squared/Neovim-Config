local oil = require("oil")
local set = vim.keymap.set

set("n", "-", function() oil.toggle_float() end, { desc = "Open oil window" })
