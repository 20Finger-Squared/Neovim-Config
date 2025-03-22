local oil = require("oil")
local actions = require("oil.actions")
local set = vim.keymap.set

set("n", "<leader>cd", function() actions.cd.callback() end, { desc = "Change to directory in oil" })

set("n", "<leader>v", function() actions.select.callback({ vertical = true }) end, { desc = "Open file in vertical split" })

set("n", "-", function() oil.toggle_float() end, { desc = "Open oil window" })
