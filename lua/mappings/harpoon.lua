local harpoon = require("harpoon")
local set     = vim.keymap.set

harpoon:setup()

set("n", "<leader>a", function() harpoon:list():add() end,                         {desc = "󰛢 dds file to harpoon"})
set("n", "<leader>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, {desc = "󰛢 pen harpoon select menu"})

set("n", "<leader>1", function() harpoon:list():select(1) end, {desc="󰛢 Opens file no.1 in the harpoon buffer"})
set("n", "<leader>2", function() harpoon:list():select(2) end, {desc="󰛢 pens file no.2 in the harpoon buffer"})
set("n", "<leader>3", function() harpoon:list():select(3) end, {desc="󰛢 pens file no.3 in the harpoon buffer"})
set("n", "<leader>4", function() harpoon:list():select(4) end, {desc="󰛢 pens file no.4 in the harpoon buffer"})
