local harpoon = require("harpoon")
local set     = vim.keymap.set

harpoon:setup()

set("n", "<leader>a", function() harpoon:list():add() end)
set("n", "<C-e>",     function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

set("n", "<leader>1", function() harpoon:list():select(1) end)
set("n", "<leader>2", function() harpoon:list():select(2) end)
set("n", "<leader>3", function() harpoon:list():select(3) end)
set("n", "<leader>4", function() harpoon:list():select(4) end)

